
    <h3>{$payment_text_header}</h3>
    <div class="footer-payment-method">
        <ul class="list-group">
            {foreach $payment_methods as $payment}
            <li class="{$payment}"></li>
            {/foreach}
        </ul>
    </div>
