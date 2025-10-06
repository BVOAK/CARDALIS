<?php
/**
 * Copyright ETS Software Technology Co., Ltd
 *
 * NOTICE OF LICENSE
 *
 * This file is not open source! Each license that you purchased is only available for 1 website only.
 * If you want to use this file on more websites (or projects), you need to purchase additional licenses.
 * You are not allowed to redistribute, resell, lease, license, sub-license or offer our resources to any third party.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future.
 *
 * @author ETS Software Technology Co., Ltd
 * @copyright  ETS Software Technology Co., Ltd
 * @license    Valid for 1 website (or project) for each purchase of license
 */


class Ets_advancedcaptchaOverride extends Ets_advancedcaptcha
{
    public function getWidgetVariables($hookName = null, array $configuration = array())
    {
        $contact = array();
        $notifications = false;
        if (Tools::isSubmit('submitMessage')) {
            $this->sendMessage();

            if (!empty($this->context->controller->errors)) {
                $notifications['messages'] = $this->context->controller->errors;
                $notifications['nw_error'] = true;
            } elseif (!empty($this->context->controller->success)) {
                $notifications['messages'] = $this->context->controller->success;
                $notifications['nw_error'] = false;
            }
        } elseif (
            empty($this->context->cookie->contactFormToken)
            || empty($this->context->cookie->contactFormTokenTTL)
            || $this->context->cookie->contactFormTokenTTL < time()
        ) {
            $this->createNewToken();
        }
        if (($id_customer_thread = (int) Tools::getValue('id_customer_thread')) && ($token = Tools::getValue('token')) && Validate::isCleanHtml($token)) {
            $cm = new CustomerThread($id_customer_thread);
            if ($cm->token === $token) {
                $this->customer_thread = $this->context->controller->objectPresenter->present($cm);
                $order = new Order((int) $this->customer_thread['id_order']);
                if (Validate::isLoadedObject($order)) {
                    $this->customer_thread['reference'] = $order->getUniqReference();
                }
            }
        }

        $contact['contacts'] = $this->getTemplateVarContact();
        $contact['message'] = html_entity_decode(Tools::getValue('message'));
        $contact['allow_file_upload'] = (bool) Configuration::get('PS_CUSTOMER_SERVICE_FILE_UPLOAD');
        $contact['company'] = trim(Tools::getValue('company'));
        $contact['tel'] = trim(Tools::getValue('tel'));

        if (!(bool) Configuration::isCatalogMode()) {
            $contact['orders'] = $this->getTemplateVarOrders();
        } else {
            $contact['orders'] = array();
        }

        if ($this->customer_thread && isset($this->customer_thread['email']) && $this->customer_thread['email']) {
            $contact['email'] = $this->customer_thread['email'];
        } else {
            $contact['email'] = Tools::safeOutput(Tools::getValue('from', ((isset($this->context->cookie) && isset($this->context->cookie->email) && Validate::isEmail($this->context->cookie->email)) ? $this->context->cookie->email : '')));
        }
        unset($hookName);
        unset($configuration);
        return array(
            'contact' => $contact,
            'notifications' => $notifications,
            'token' => $this->context->cookie->contactFormToken,
            'id_module' => (int) Module::getInstanceByName('contactform')->id,
        );
    }

    public function sendMessage()
    {
        if ($this->hookVal('contact', 'contact')) {
            $this->captchaVal($this->context->controller->errors);
        }
        if ($this->context->controller->errors)
            return false;
        $extension = array('.txt', '.rtf', '.doc', '.docx', '.pdf', '.zip', '.png', '.jpeg', '.gif', '.jpg');
        $file_attachments = [];
        if (
            isset($_FILES['fileUpload'])
            && ($files = $_FILES['fileUpload'])
            && is_array($files)
            && count($files)
            && ((isset($files['name']) && is_array($files['name'])) || !isset($files['name']))
        ) {
            foreach ($files as $file) {
                $file_attachments[] = $this->fileAttachment($file);
            }
            $file_attachment = $file_attachments[0];
        } else {
            $file_attachment = $this->fileAttachment($_FILES['fileUpload']);
        }
        $message = Tools::getValue('message');
        $company = trim(Tools::getValue('company'));
        $tel = trim(Tools::getValue('tel'));

        if (!($from = trim(Tools::getValue('from'))) || !Validate::isEmail($from)) {
            $this->context->controller->errors[] = $this->l('Invalid email address.');
        } elseif (!($company = trim(Tools::getValue('company')))) {
            $this->context->controller->errors[] = $this->trans(
                'Invalid company.',
                [],
                'Shop.Notifications.Error'
            );
        } elseif (!($tel = trim(Tools::getValue('tel')))) {
            $this->context->controller->errors[] = $this->trans(
                'Invalid phone.',
                [],
                'Shop.Notifications.Error'
            );
        } elseif (!$message) {
            $this->context->controller->errors[] = $this->l('The message cannot be blank.');
        } elseif (!Validate::isCleanHtml($message)) {
            $this->context->controller->errors[] = $this->l('Invalid message');
        } elseif (!($id_contact = (int) Tools::getValue('id_contact')) || !(Validate::isLoadedObject($contact = new Contact($id_contact, $this->context->language->id)))) {
            $this->context->controller->errors[] = $this->l('Please select a subject from the list provided. ');
        } elseif (!empty($file_attachment['name']) && $file_attachment['error'] != 0) {
            $this->context->controller->errors[] = $this->l('An error occurred during the file-upload process.');
        } elseif (!empty($file_attachment['name']) && !in_array(Tools::strtolower(Tools::substr($file_attachment['name'], -4)), $extension) && !in_array(Tools::strtolower(Tools::substr($file_attachment['name'], -5)), $extension)) {
            $this->context->controller->errors[] = $this->l('Bad file extension');
        } else {
            $customer = $this->context->customer;
            if (!$customer->id) {
                $customer->getByEmail($from);
            }

            $id_order = (int) Tools::getValue('id_order');

            $id_customer_thread = CustomerThread::getIdCustomerThreadByEmailAndIdOrder($from, $id_order);

            if ($contact->customer_service) {
                if ((int) $id_customer_thread) {
                    $ct = new CustomerThread($id_customer_thread);
                    $ct->status = 'open';
                    $ct->id_lang = (int) $this->context->language->id;
                    $ct->id_contact = (int) $id_contact;
                    $ct->id_order = (int) $id_order;
                    if ($id_product = (int) Tools::getValue('id_product')) {
                        $ct->id_product = $id_product;
                    }
                    $ct->update();
                } else {
                    $ct = new CustomerThread();
                    if (isset($customer->id)) {
                        $ct->id_customer = (int) $customer->id;
                    }
                    $ct->id_shop = (int) $this->context->shop->id;
                    $ct->id_order = (int) $id_order;
                    if ($id_product = (int) Tools::getValue('id_product')) {
                        $ct->id_product = $id_product;
                    }
                    $ct->id_contact = (int) $id_contact;
                    $ct->id_lang = (int) $this->context->language->id;
                    $ct->email = $from;
                    $ct->status = 'open';
                    $ct->token = Tools::passwdGen(12);
                    $ct->add();
                }

                if ($ct->id) {

                    $lastMessage = CustomerMessage::getLastMessageForCustomerThread($ct->id);
                    if ($file_attachments && count($file_attachments)) {
                        $testFileUpload = (isset($file_attachments[0]['rename']) && !empty($file_attachments[0]['rename']));
                    } else {
                        $testFileUpload = (isset($file_attachment['rename']) && !empty($file_attachment['rename']));
                    }

                    // if last message is the same as new message (and no file upload), do not consider this contact
                    if ($lastMessage != $message || $testFileUpload) {
                        $res = $this->saveCustomerMessage($ct->id, $message, $file_attachments && count($file_attachments) ? $file_attachments[0] : [$file_attachment]);
                        if ($res)
                            $this->context->controller->errors[] = $res;
                    } else {
                        $mailAlreadySend = true;
                    }
                } else {
                    $this->context->controller->errors[] = $this->l('An error occurred while sending the message.');
                }
            }
            $sendConfirmationEmail = Module::isEnabled('contactform') && (Configuration::hasKey(self::SEND_CONFIRMATION_EMAIL) || Configuration::hasKey(self::SEND_CONFIRMATION_EMAIL, null, $this->context->shop->id_shop_group, $this->context->shop->id)) ? (int) Configuration::get(self::SEND_CONFIRMATION_EMAIL) : 1;
            $sendNotificationEmail = Module::isEnabled('contactform') && (Configuration::hasKey(self::SEND_NOTIFICATION_EMAIL) || Configuration::hasKey(self::SEND_NOTIFICATION_EMAIL, null, $this->context->shop->id_shop_group, $this->context->shop->id)) ? (int) Configuration::get(self::SEND_NOTIFICATION_EMAIL) : 1;

            if (
                !count($this->context->controller->errors)
                && empty($mailAlreadySend)
                && ($sendConfirmationEmail || $sendNotificationEmail)
            ) {
                $var_list = array(
                    '{order_name}' => '-',
                    '{attached_file}' => '-',
                    '{message}' => Tools::nl2br(Tools::stripslashes($message)),
                    '{email}' => $from,
                    '{product_name}' => '',
                    '{company}' => Tools::nl2br(stripslashes($company)),
                    '{tel}' => Tools::nl2br(stripslashes($tel)),
                );

                if (isset($file_attachment['name'])) {
                    $var_list['{attached_file}'] = $file_attachment['name'];
                }

                $id_product = (int) Tools::getValue('id_product');

                if (isset($ct) && Validate::isLoadedObject($ct) && $ct->id_order) {
                    $order = new Order((int) $ct->id_order);
                    $var_list['{order_name}'] = $order->getUniqReference();
                    $var_list['{id_order}'] = (int) $order->id;
                }

                if ($id_product) {
                    $product = new Product((int) $id_product);
                    if (Validate::isLoadedObject($product) && isset($product->name[Context::getContext()->language->id])) {
                        $var_list['{product_name}'] = $product->name[Context::getContext()->language->id];
                    }
                }

                if (empty($contact->email) && $sendConfirmationEmail) {
                    Mail::Send(
                        $this->context->language->id,
                        'contact_form',
                        ((isset($ct) && Validate::isLoadedObject($ct)) ? sprintf($this->l('Your message has been correctly sent #ct%s #tc%s'), $ct->id, $ct->token) : $this->l('Your message has been correctly sent')),
                        $var_list,
                        $from,
                        null,
                        null,
                        null,
                        $file_attachment
                    );
                } elseif ($contact->email) {
                    if (
                        $sendNotificationEmail && !Mail::Send(
                            $this->context->language->id,
                            'contact',
                            $this->l('Message from contact form') . ' [no_sync]',
                            $var_list,
                            $contact->email,
                            $contact->name,
                            null,
                            null,
                            $file_attachment,
                            null,
                            _PS_MAIL_DIR_,
                            false,
                            null,
                            null,
                            $from
                        ) || $sendConfirmationEmail && !Mail::Send(
                            $this->context->language->id,
                            'contact_form',
                            ((isset($ct) && Validate::isLoadedObject($ct)) ? sprintf($this->l('Your message has been correctly sent #ct%s #tc%s'), $ct->id, $ct->token) : $this->l('Your message has been correctly sent')),
                            $var_list,
                            $from,
                            null,
                            null,
                            null,
                            $file_attachment,
                            null,
                            _PS_MAIL_DIR_,
                            false,
                            null,
                            null,
                            $contact->email
                        )
                    ) {
                        $this->context->controller->errors[] = $this->l('An error occurred while sending the message.');
                    }
                }
            }

            if (!count($this->context->controller->errors)) {
                $this->context->controller->success[] = $this->l('Your message has been successfully sent to our team.');
            }
        }
    }

}