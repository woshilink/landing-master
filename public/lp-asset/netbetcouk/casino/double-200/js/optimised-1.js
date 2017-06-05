var GTM = {
    desktop: {
        it: '',
        es: '',
        com: ''
    },
    mobile: {
        it: '',
        es: '',
        com: ''
    }
};
var promoCode, params = window.LP ? LP.get('params') : {},
    p = {};

(function(name) {
    var server = null,
        offset = null;

    Object.defineProperty(window, name, {
        'get': function() {
            return new Date((new Date()).valueOf() - offset);
        },
        'set': function(e) {
            clock = e;
            offset = (new Date()) - clock;
        }
    });
})('SERVERCLOCK');

if (window.LP && window.STATELY && window.jQuery) {
    if (LP.get('params').ga2 === 'true' || LP.get('params').gtm === 'true') {
        window.ga = function() {
            console.log('old GA', arguments);
        };
    }

// If this page isn't expecting to get a real optin status let's not worry it unduly
LP.on('gotOptinStatus', function() {
var wmid=LP.get('wmid');
if (wmid===null || wmid==9602 || wmid==0)  {
STATELY.set('optin','n');
}
});
    // Piggyback start to ensure we always have a wmid
    (function() {
        var start = LP.start;
        LP.start = function(cb) {
            var wmid = LP.get('wmid');
            if (wmid === null || wmid === 0) LP.set('wmid', 9602);
            start(cb);
        };
    })();

    for (var i in params) p[i.toLowerCase()] = params[i];

    if (LP.on) LP.on('gotOptinStatus', function(data) {
        $(function() {
        	window.page=window.page||{};
        	page.promoCode=page.promoCode || '##PROMOCODE##'.replace(/^#.*#$/,'') || $('[data-promocode]:eq(0)').data('promocode');
		    promoCode = p.promotioncode || p.promo_code || page.promoCode /*|| LP.cookie('promotioncode') || LP.cookie('promo_code') || LP.cookie('promotionCode') */ ;

            var states = STATELY.get(),
                accountID = '123456',session=false,
                jurisdiction = '',
                locale = '';

            if (promoCode) {
                $(function() {

                    $('a[data-promocode]').data('promocode', promoCode);

                    $('a[href*="promotionCode="]').each(function(i, e) {
                        var h = $(e).attr('href').replace(/promotionCode=[^&]*/, 'promotionCode=' + promoCode);
                        $(e).attr('href', h);
                        console.log(h);
                    });

                });
            }
            if (data.account) {
                accountID = data.account.accountID || accountID;
session=true;
                locale = data.account.localeCode.split('_')[0];
                jurisdiction = data.account.jurisdictionalCode;
            }
            var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
            var h = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
            var dom = window.location.hostname.split('.').slice(-1).join('');
            if (['com', 'es', 'it'].indexOf(dom) < 0) dom = 'com';

            var d = {
                event: 'ga_pageLoad',
                ga_target_property: GTM[(device_is_mobile ? 'mobile' : 'desktop')][dom],
                acc_id: accountID,
                vertical: 'promotions',
                product: 'promotions',
                locale: locale,
                reg_status: session ? 'registered' : 'unregistered',
                login_status: session ? 'logged in' : 'logged out',
                jurisdiction: jurisdiction,
                orientation: device_is_mobile ? (h > w ? 'portrait' : 'landscape') : 'desktop',
                app_ID: '',
                promotion_name: window.location.pathname.substring(1),
                rfr: p.rfr || LP.cookie('rfr') || 'undefined',
                sid: p.sid || LP.cookie('sid') || 'undefined',
                efid: p.efid || LP.cookie('efid') || 'undefined',
                mpch: p.mpch || LP.cookie('mpch') || 'undefined',
                pla: p.pla || LP.cookie('pla') || 'undefined',
                clkid: p.clkid || LP.cookie('clkid') || LP.cookie('clkID') || 'undefined',
                bid: p.bid || LP.cookie('bid') || 'undefined',
                pid: p.pid || LP.cookie('pid') || 'undefined',
                ttp: p.ttp || LP.cookie('ttp') || 'undefined'
            };
            if (promoCode) d.promo_code = promoCode;
            if (window.dataLayer) {
                if (window.console && console.log) console.log('GA', d);
                dataLayer.push(d);
            }
        });
    });


}
