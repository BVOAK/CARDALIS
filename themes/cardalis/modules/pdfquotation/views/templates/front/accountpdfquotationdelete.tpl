
{**
* AccountPdfQuotationDelete Template
* 
* @author Empty
* @copyright  Empty
* @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{extends file='customer/page.tpl'}

{block name='breadcrumb'}{/block}

{block name='page_title'}
    <div class="headerTitle">
        <h1 class="h1 mainTitle">
            {l s='My Quotations' mod='pdfquotation'}
        </h1>
    </div>
{/block}

{block name='page_content'}

    <div id="action-quotation">
        <p class="align-center">{l s='Are you sure, you want to delete this quotation' mod='pdfquotation'} : {$quotationObj->ref_quotation|escape:'html':'UTF-8'}?</p>
        <a class="cancel-quotation btn btn-default button button-medium exclusive" href="{$link->getModuleLink('pdfquotation', 'accountpdfquotation', ['action' => 'index'])|escape:'html':'UTF-8'}">
            <span>{l s='Cancel' mod='pdfquotation'}</span>
        </a>
        <a class="validate-quotation btn btn-default button red button-medium" href="{$link->getModuleLink('pdfquotation', 'accountpdfquotation', ['action' => 'deleteConfirm', 'id_quotation' => $quotationObj->id_quotation])|escape:'html':'UTF-8'}">
            <span>{l s='Validate' mod='pdfquotation'}</span>
        </a>
    </div>
{/block}