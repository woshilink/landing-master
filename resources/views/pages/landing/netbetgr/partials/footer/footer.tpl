<div class="row">
    <div class="col-xs-12 col-sm-offset-3 col-sm-6 col-md-offset-2 col-md-8 ">
        <div class="legal-text text-center">
            <p>
                +21, ΠΑΙΞΕ ΥΠΕΥΘΥΝΑ, WWW.KETHEA.GR, ΓΡΑΜΜΗ ΥΠΟΣΤΗΡΙΞΗΣ: 2109237777, ΑΡΜΟΔΙΑ ΑΡΧΗ ΑΔΕΙΟΔΟΤΗΣΗΣ MGA, ΚΙΝΔΥΝΟΣ ΕΘΙΣΜΟΥ ΚΑΙ ΑΠΩΛΕΙΑΣ ΠΕΡΙΟΥΣΙΑΣ
            </p>
        </div>
    </div>
</div>
<br>
<div class="row text-center">
    <div class="col-xs-12 ">
        <h4>{$payment_text_header|default:'ΜΕΘΟΔΟΙ ΠΛΗΡΩΜΩΝ'}</h4>
        {include file="pages/landing/{$domain}/partials/footer/logos/payment-logos.tpl" payment_methods=$payment_methods}
    </div>

    <div class="col-xs-12 ">
        <h4>{$responsible_text_header|default:'ΥΠΕΥΘΥΝΟ ΠΑΙΧΝΙΔΙ'}</h4>
        {include file="pages/landing/{$domain}/partials/footer/logos/responsible-logos.tpl" responsibles=$responsibles}
    </div>
</div>



<div class="row">
    <div class="col-xs-12">
        <div class="footer-desc text-center">
            {include file="pages/landing/{$domain}/partials/footer/footer-text-{$lang}.tpl"}
        </div>
    </div>
</div>