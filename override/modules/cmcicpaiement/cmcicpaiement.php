<?php
/**
 * 2007-2023 PrestaShop & Malttt
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * This module was developed by Prestashop SA until 2022 and is now maintained by Agence Malttt SAS.
 * 
 * @author    PrestaShop SA <contact@prestashop.com>
 * @maintainer    Malttt Agency <support@malttt.com>
 * @copyright 2007-2023 PrestaShop SA & Malttt
 * @license   Commercial Licence http://addons.prestashop.com/en/content/12-terms-and-conditions-of-use
 * International Registered Trademark & Property of PrestaShop SA
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class CMCICPaiementOverride extends CMCICPaiement
{

    private function getExternalPaymentOption()
    {
        $data = $this->getFormData();
        $externalOption = new PrestaShop\PrestaShop\Core\Payment\PaymentOption();

        $externalOption->setCallToActionText($this->l('Pay by credit card with CM-CIC paiement'))
            ->setAction($data['cmcic']->s_url_paiement)
            ->setInputs([
                'version' => [
                    'name' => 'version', 'type' => 'hidden', 'value' => $data['cmcic']->s_version,
                ],
                'TPE' => [
                    'name' => 'TPE', 'type' => 'hidden', 'value' => $data['cmcic']->s_numero,
                ],
                'date' => [
                    'name' => 'date', 'type' => 'hidden', 'value' => $data['cmcic_date'],
                ],
                'montant' => [
                    'name' => 'montant', 'type' => 'hidden', 'value' => $data['cmcic_amount'] . $data['cmcic_currency'],
                ],
                'reference' => [
                    'name' => 'reference', 'type' => 'hidden', 'value' => $data['cmcic_reference'],
                ],
                'MAC' => [
                    'name' => 'MAC', 'type' => 'hidden', 'value' => $data['hmac_cipher'],
                ],
                'url_retour' => [
                    'name' => 'url_retour', 'type' => 'hidden', 'value' => $data['cmcic']->s_url_ko,
                ],
                'url_retour_ok' => [
                    'name' => 'url_retour_ok', 'type' => 'hidden', 'value' => $data['cmcic']->s_url_ok,
                ],
                'url_retour_err' => [
                    'name' => 'url_retour_err', 'type' => 'hidden', 'value' => $data['cmcic']->s_url_ko,
                ],
                'lgue' => [
                    'name' => 'lgue', 'type' => 'hidden', 'value' => $data['cmcic']->s_langue,
                ],
                'societe' => [
                    'name' => 'societe', 'type' => 'hidden', 'value' => $data['cmcic']->s_code_societe,
                ],
                'texte-libre' => [
                    'name' => 'texte-libre', 'type' => 'hidden', 'value' => $data['cmcic_textelibre'],
                ],
                'mail' => [
                    'name' => 'mail', 'type' => 'hidden', 'value' => $data['cmcic_email'],
                ],
                'contexte_commande' => [
                    'name' => 'contexte_commande', 'type' => 'hidden', 'value' => $data['cmcic_contexte'],
                ],
            ])
            ->setLogo(Media::getMediaPath(_PS_THEME_DIR_ . 'modules/' . $this->name . '/views/img/cmcicpaiement_paiement.png'));

            var_dump(_PS_THEME_DIR_);

        return $externalOption;
    }
}
