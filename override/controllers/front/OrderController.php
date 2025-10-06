<?php

use PrestaShop\PrestaShop\Adapter\Presenter\Address\AddressPresenter;

class OrderController extends OrderControllerCore
{
    public function initContent()
    {
        parent::initContent();
        $this->assignAddressRecap();
    }

    protected function assignAddressRecap()
    {
        $cart = $this->context->cart;
        if (!Validate::isLoadedObject($cart)) {
            return;
        }

        $delivery = null;
        $invoice  = null;

        $deliveryAddress = new Address((int)$cart->id_address_delivery);
        $invoiceAddress  = new Address((int)$cart->id_address_invoice);

        if (class_exists(AddressPresenter::class)) {
            $presenter = new AddressPresenter();
            if (Validate::isLoadedObject($deliveryAddress)) {
                $delivery = $presenter->present($deliveryAddress);
            }
            if (Validate::isLoadedObject($invoiceAddress)) {
                $invoice = $presenter->present($invoiceAddress);
            }
        } else {
            // Fallback minimal si jamais le presenter n'est pas dispo
            if (Validate::isLoadedObject($deliveryAddress)) {
                $delivery = ['formatted' => sprintf(
                    '%s %s<br>%s%s<br>%s %s<br>%s',
                    $deliveryAddress->firstname, $deliveryAddress->lastname,
                    $deliveryAddress->address1,
                    $deliveryAddress->address2 ? ' '.$deliveryAddress->address2 : '',
                    $deliveryAddress->postcode, $deliveryAddress->city,
                    Country::getNameById((int)$this->context->language->id, (int)$deliveryAddress->id_country)
                )];
            }
            if (Validate::isLoadedObject($invoiceAddress)) {
                $invoice = ['formatted' => sprintf(
                    '%s %s<br>%s%s<br>%s %s<br>%s',
                    $invoiceAddress->firstname, $invoiceAddress->lastname,
                    $invoiceAddress->address1,
                    $invoiceAddress->address2 ? ' '.$invoiceAddress->address2 : '',
                    $invoiceAddress->postcode, $invoiceAddress->city,
                    Country::getNameById((int)$this->context->language->id, (int)$invoiceAddress->id_country)
                )];
            }
        }

        $this->context->smarty->assign([
            'address_delivery' => $delivery,  // array ['formatted'=>... ] ou null
            'address_invoice'  => $invoice,   // idem
            'same_addresses'   => ((int)$cart->id_address_delivery === (int)$cart->id_address_invoice),
        ]);
    }
}
