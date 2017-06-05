<div class="row">
    <div class="col-xs-12 col-sm-6">
        <h3>{$payment_text_header|default:'METODE DE PLATĂ'}</h3>
        {include file="pages/landing/{$domain}/partials/footer/logos/payment-logos.tpl" }
    </div>

    <div class="col-xs-12 col-sm-6">
        <h3>{$responsible_text_header|default:'JOC RESPONSABIL'}</h3>
        {include file="pages/landing/{$domain}/partials/footer/logos/responsible-logos.tpl" }
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <div class="footer-desc text-center">
            {include file="pages/landing/{$domain}/partials/footer/footer-text-{$lang}.tpl"}
        </div>
    </div>
</div>