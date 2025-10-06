
{**
* ShoppingCart Template
* 
* @author Empty
* @copyright  Empty
* @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

<div id="print-quotation" class="card p-4">

    <p class="titleSec">{l s='Créer un devis' mod='pdfquotation'}</p>
    <span class="textQuotation">Attention : il est nécessaire de vous connecter ou de créer un compte pour que les frais de port et la TVA soient calculés en fonction du pays de destination. A défaut, le devis sera exprimé en TTC (20%) et la livraison valable uniquement en France Métropolitaine.</span>

    <div id="customer-information">
        <form>
            <section class="form-fields">
                <div class="form-group row">
                    <label class="col-md-3 form-control-label">{l s='Société' mod='pdfquotation'}*</label>
                    <div class="col-md-8">
                        <input class="form-control" name="society" id="society" type="text" required="required" value="{if $customer.company}{$customer.company}{/if}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-3 form-control-label">{l s='First Name' mod='pdfquotation'}*</label>
                    <div class="col-md-8">
                        <input class="form-control" name="first_name" id="first_name" type="text" required="required" value="{if $customer.firstname}{$customer.firstname}{/if}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-3 form-control-label">{l s='Last Name' mod='pdfquotation'}*</label>
                    <div class="col-md-8">
                        <input class="form-control" name="last_name" id="last_name" type="text" required="required" value="{if $customer.lastname}{$customer.lastname}{/if}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-3 form-control-label">{l s='E mail' mod='pdfquotation'}*</label>
                    <div class="col-md-8">
                        <input class="form-control" name="email" id="email" type="email" required="required" value="{if $customer.email}{$customer.email}{/if}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-3 form-control-label">{l s='Phone' mod='pdfquotation'}*</label>
                    <div class="col-md-8">
                        <input class="form-control" name="phone" id="phone" type="tel" required="required" value="">
                    </div>
                </div>

                <p>* champs obligatoires</p>

                <div class="form-group">
                    <hr />
                    <p>Pour toute information complémentaire, veuillez nous contacter au 04 22 14 00 86</p>
                    <div class="d-none">
                        <label class="col-md-3 form-control-label">{l s='To be contacted again' mod='pdfquotation'}</label>
                        <div class="col-md-6 form-control-valign">
                            <label class="radio-inline">
                                <span class="custom-radio">
                                    <input type="radio" name="contacted" id="yes" value="1">
                                    <span></span>
                                </span>
                                {l s='Yes' mod='pdfquotation'}
                            </label>

                            <label class="radio-inline">
                                <span class="custom-radio">
                                    <input type="radio" name="contacted" id="no" value="0" checked="checked">
                                    <span></span>
                                </span>
                                {l s='No' mod='pdfquotation'}
                            </label>
                        </div>
                    </div>
                </div>

                <input name="spam" id="spam" type="hidden" value=""/>
            </section>

            <footer class="form-footer clearfix">
                <button class="btn btn-primary form-control-submit pull-xs-right btSaveQuotation" type="submit">
                    {l s='Sauvegarder et télécharger votre devis' mod='pdfquotation'}
                </button>
            </footer>

            {*<div class="clearfix">*}

                {*<div class="radio-inline">*}
                    {*<label for="yes" class="top">*}
                        {*<div class="radio">*}
                            {*<span>*}

                            {*</span>*}
                        {*</div>*}
                        {*{l s='Yes' mod='pdfquotation'}*}
                    {*</label>*}
                {*</div>*}
                {*<div class="radio-inline">*}
                    {*<label for="no" class="top">*}
                        {*<div class="radio">*}
                            {*<span>*}
                                {*<input type="radio" name="contacted" id="no" value="0">*}
                            {*</span>*}
                        {*</div>*}
                        {*{l s='No' mod='pdfquotation'}*}
                    {*</label>*}
                {*</div>*}
            {*</div>*}

            {*<input name="spam" id="spam" type="hidden" value=""/>*}

            {*<button type="submit" class="button btn btn-default button-medium">*}
                {*<span>{l s='Print' mod='pdfquotation'}<i class="icon-chevron-right right"></i></span>*}
            {*</button>*}
        </form>
    </div>
</div>
