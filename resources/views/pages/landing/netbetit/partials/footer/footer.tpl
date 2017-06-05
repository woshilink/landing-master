<div class="row">
    <div class="col-xs-12 col-sm-6">
        <h4>{$payment_text_header|default:'METODI DI PAGAMENTO'}</h4>
        {include file="pages/landing/netbetit/partials/footer/logos/payment-logos.tpl" }
    </div>

    <div class="col-xs-12 col-sm-6">
        <h4>{$responsible_text_header|default:'GIOCO RESPONSABILE E SICURO'}</h4>
        {include file="pages/landing/netbetit/partials/footer/logos/responsible-logos.tpl" }
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <div class="footer-desc text-center">
            {include file="pages/landing/{$domain}/partials/footer/footer-text-{$lang}.tpl"}
        </div>
    </div>
</div>