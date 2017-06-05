// atob & btoa polyfill
(function(){var t="undefined"!=typeof window?window:exports,r="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",n=function(){try{document.createElement("$")}catch(t){return t}}();t.btoa||(t.btoa=function(t){for(var o,e,a=0,c=r,f="";t.charAt(0|a)||(c="=",a%1);f+=c.charAt(63&o>>8-8*(a%1))){if(e=t.charCodeAt(a+=.75),e>255)throw n;o=o<<8|e}return f}),t.atob||(t.atob=function(t){if(t=t.replace(/=+$/,""),1==t.length%4)throw n;for(var o,e,a=0,c=0,f="";e=t.charAt(c++);~e&&(o=a%4?64*o+e:e,a++%4)?f+=String.fromCharCode(255&o>>(6&-2*a)):0)e=r.indexOf(e);return f})})();


// jquery.jsonp 2.4.0 (c)2012 Julian Aubourg | MIT License
// https://github.com/jaubourg/jquery-jsonp
//(function(e){function t(){}function n(e){C=[e]}function r(e,t,n){return e&&e.apply&&e.apply(t.context||t,n)}function i(e){return/\?/.test(e)?"&":"?"}function O(c){function Y(e){z++||(W(),j&&(T[I]={s:[e]}),D&&(e=D.apply(c,[e])),r(O,c,[e,b,c]),r(_,c,[c,b]))}function Z(e){z++||(W(),j&&e!=w&&(T[I]=e),r(M,c,[c,e]),r(_,c,[c,e]))}c=e.extend({},k,c);var O=c.success,M=c.error,_=c.complete,D=c.dataFilter,P=c.callbackParameter,H=c.callback,B=c.cache,j=c.pageCache,F=c.charset,I=c.url,q=c.data,R=c.timeout,U,z=0,W=t,X,V,J,K,Q,G;return S&&S(function(e){e.done(O).fail(M),O=e.resolve,M=e.reject}).promise(c),c.abort=function(){!(z++)&&W()},r(c.beforeSend,c,[c])===!1||z?c:(I=I||u,q=q?typeof q=="string"?q:e.param(q,c.traditional):u,I+=q?i(I)+q:u,P&&(I+=i(I)+encodeURIComponent(P)+"=?"),!B&&!j&&(I+=i(I)+"_"+(new Date).getTime()+"="),I=I.replace(/=\?(&|$)/,"="+H+"$1"),j&&(U=T[I])?U.s?Y(U.s[0]):Z(U):(E[H]=n,K=e(y)[0],K.id=l+N++,F&&(K[o]=F),L&&L.version()<11.6?(Q=e(y)[0]).text="document.getElementById('"+K.id+"')."+p+"()":K[s]=s,A&&(K.htmlFor=K.id,K.event=h),K[d]=K[p]=K[v]=function(e){if(!K[m]||!/i/.test(K[m])){try{K[h]&&K[h]()}catch(t){}e=C,C=0,e?Y(e[0]):Z(a)}},K.src=I,W=function(e){G&&clearTimeout(G),K[v]=K[d]=K[p]=null,x[g](K),Q&&x[g](Q)},x[f](K,J=x.firstChild),Q&&x[f](Q,J),G=R>0&&setTimeout(function(){Z(w)},R)),c)}var s="async",o="charset",u="",a="error",f="insertBefore",l="_jqjsp",c="on",h=c+"click",p=c+a,d=c+"load",v=c+"readystatechange",m="readyState",g="removeChild",y="<script>",b="success",w="timeout",E=window,S=e.Deferred,x=e("head")[0]||document.documentElement,T={},N=0,C,k={callback:l,url:location.href},L=E.opera,A=!!e("<div>").html("<!--[if IE]><i><![endif]-->").find("i").length;O.setup=function(t){e.extend(k,t)},e.jsonp=O})(jQuery)

///////////////////////////////////////////////////////////////////////////////////////////////////
// ISO String Extension
///////////////////////////////////////////////////////////////////////////////////////////////////
// I built this with the collaboration of other developers from the following web site
// https://gist.github.com/1809867
///////////////////////////////////////////////////////////////////////////////////////////////////
// Author: Skip M. Cherniss
// Date: 20120716
///////////////////////////////////////////////////////////////////////////////////////////////////
// IE 8 does not support toISOString. This function will snap in when it does not exist
///////////////////////////////////////////////////////////////////////////////////////////////////
if (typeof (Date.prototype.toISOString) != 'function') {
	Date.prototype.toISOString = function () {
		function pad(n) { return n < 10 ? '0' + n : n }
		return (
			this.getUTCFullYear() + '-'
			+ pad(this.getUTCMonth() + 1) + '-'
			+ pad(this.getUTCDate()) + 'T'
			+ pad(this.getUTCHours()) + ':'
			+ pad(this.getUTCMinutes()) + ':'
			+ pad(this.getUTCSeconds()) + '.'
			+ pad(this.getUTCMilliseconds()) + 'Z');
	}
}

if (!window.location.origin) window.location.origin = window.location.protocol + "//" + window.location.hostname;

/*
	bflp.js v1.14e/
*/
var LP=(function() {
	var listeners={};
	var params=_parseQuery(), i, s;

	// Look after encoding or decoding all URL parameters
	if (params['encode']) {
		delete params['encode'];
		s='';
		for (i in params) {
			s+=(s=='')?'':'&';
			s+=i+'='+params[i];
		}
		window.location.replace(window.location.href.split('?')[0]+'?p='+btoa(s));
	}
	else if (params['decode']) {
		delete params['decode'];
		window.location.replace(window.location.href.split('?')[0]+'?'+atob(params['p']));
	}
	if (params['p']) {
		try {
			params=_parseQuery(atob(params['p']));
		} catch (e) {
			params=[];
		}
	}

	var promotionCode='promotionCode' in params?params['promotionCode']:_getCookie('promotionCode');
	var data={'wmid': null , 'variants': [], 'soft': false, 'bounce':{}, 'variant': null, 'params': params, 'optinOverlay': {}, 'onLogin': null, 'onLoginRetryPeriod': 500, 'ga': true, 'redirectUrl': '', 'redirectMethod': 'POST', 'redirectProduct': 'marketing-promotions'};
	var started=false;
	var e, thisDomain, parentDomain;
	var customerMessageId=-1, optin_data={};
	var debug=false, soft=false, optin='n', session=false, loading=true, app='na';
	var login_form=null;

	try {
		thisDomain = document.domain;
		parentDomain = thisDomain.substr( thisDomain.indexOf(".") + 1 );
	} catch (e) {
		parentDomain="betfair.com";
	} ;

	data['background']="https://www."+parentDomain;
	data['destination']=null;
	data['redirectParams']={'optin':'submit','soft':'y', 'select': ''};
	if (params['app']) data['redirectParams']['app']=params['app'];
	data['soft']=false;
	data['ajax_timeout']=8000;

	// Set up WM calls
	var baseUrl         = "https://messaging."+parentDomain;
	var serviceFragment = "/services/ws/";
	var tailFragment    = "?response=application/jsonp&callback=?";

	data['endpoints']={'optin': baseUrl+serviceFragment+'optin' };
	
	if (params['log']==='y' && window.console && console.log) {
		on('set', function(name, data) {
			console.log('set '+name+' =',data);
		});
		on('log', function() {
			var a=Array.prototype.slice.call(arguments);
			window.console.log.apply(window.console,a);
		});
		on('_recordAction', function(c, a, s) {
			window.console.log('recordAction',c,a,s) ;
		});
	} ;

	// External functions
	function addCSS(css) {
		var head = document.getElementsByTagName('head')[0];
		var styleElement = document.createElement('style');
		styleElement.setAttribute('type', 'text/css');
		if (styleElement.styleSheet) {   // IE
			styleElement.styleSheet.cssText = css;
		} else {                // the world
			styleElement.appendChild(document.createTextNode(css));
		}
		head.appendChild(styleElement);
		return this;
	}
	function bounceIf(state, destination) { return this;};
	
	function _cookie(n, v) {
		if (typeof v==='undefined') return _getCookie(n);
	}
	
	function exMarket(ex,mid) {
		var p=(ex==1)?'https':'http';
		return (_isMobile()?"https://touch.betfair.com/#/market_"+ex+"_"+mid:p+"://sports.betfair.com/?mi="+mid+"&ex="+ex+"&exp=e");
	}
	function exEvent(sport, eid) {
		return (_isMobile()?"https://touch.betfair.com/#/menu_"+eid:"https://www.betfair.com/exchange/"+sport+"/event?id="+eid);
	}
	function get(n, def) {
		if (typeof(n)==="string" && (n in data)) return data[n];
		else if (typeof(n)==="undefined") return data;
		if (typeof(def)!=="undefined") return def;
		return null;
	}

	function on(name, func) {
		if ($.isFunction(func)) {
			if (name in listeners) listeners[name].push(func);
			else listeners[name]=[func];
		} else {
			window.console && console.error && console.error('Used an invalid function as a callback.');
		}
		return this;
	}

	function optIn( done, ineligible, fail) {
		var d=optin_data.datetime;
		if ($.isFunction(done)==false) done=null;
		if ($.isFunction(fail)==false) fail=null;
		if ($.isFunction(ineligible)==false) ineligible=null;
		trigger('log', 'optIn', done, ineligible, fail);

		if ( typeof d === 'undefined' )  d=(new Date()).toISOString().replace('T','+').split('.')[0].split('Z')[0];
		var s=params['select'] || data['select'] || '';
		STATELY.set('optin','submit');

		_recordAction('optin|'+d+'|'+s, function() {
			STATELY.set('optin','y');
			optin='y';
			if (s!='') STATELY.set('select', s);
			if (done) done();
		}, function() {
			STATELY.set('optin','x');
			if (ineligible) ineligible();
		}, function(a,b,c) {
			STATELY.set('optin','error');
			STATELY.set('session', 'error');
			window.console && console.error && console.error('Unexpected error',a,b,c);
			if (fail) fail();
		} ) ;
	}
	function spMarket(eid) {
	}
	function set(n,d) {
		// background. destination, wmid, variants, soft, redirectParams
		var i;
		if (typeof(n)==="string") {
			if (n==='redirectParams') data[n]=$.extend(data[n], d );
			else data[n]=d;
			if (n==="variants") _setVariants(d);

			trigger('set',n,d);
		} else if (typeof(n)==="object") {
			for (i in n) set(i,n[i]);
		}

		return this;
	}

	function restart() {
		started=false;
		_resetDom();
//		on('gotOptinStatus', function() {alert(1);_mergeDataToDom() ;});
		start();
	}

	function start(page_callback) {
		if (started) {
			trigger('log', 'started - called again');
			return;
		}
		if ($.isFunction(page_callback)===false) page_callback=null;
		function callback() {
			STATELY.loaded(true);
			if (page_callback) page_callback.apply(this, arguments);
		}
		
		var v=null;
		trigger('log', 'started - wmid='+data['wmid']);
		if (debug===false) {
			if (optin==="submit" && ('select' in params)) {
				_getOptinStatus( data['wmid'], function(d) {
					if (optin_data['optin']===true) STATELY.set('resubmit','y')
					else {
						if (optin==='n') optIn() ;
					}
					STATELY.loaded(true);
					if (callback) callback(d) ;
				}, callback);
			} else {
				_getOptinStatus( data['wmid'], callback, callback);
			}

			if ('active' in optin_data && optin_data['active']==false && 'optin' in optin_data) {
				if (optin_data['optin']!=true) STATELY.set('optin','inactive');
				else STATELY.set('optin','y');
			}

			if ("select" in optin_data && optin_data['select']!="" && optin_data['select']!=null) {
				STATELY.set('select',optin_data['select']);
			}

		} else {
			_mergeParams();
			STATELY.set('select',optin_data['select']);
		}

		v=('variant' in params)?params['variant']:v=_getCookie('promotions-variant');
		if (data['variants'].length>0) {
			if (v==null) {
				v=data['variants'][Math.floor(Math.random()*data['variants'].length)];
			}
			STATELY.set('variant', v);
			_setCookie('promotions-variant',v,7);
		}
		if (!('soft' in params)) {
			soft=data['soft'];
			STATELY.set('soft', soft?'y':'n' );
		}
		started=true;
		if (data['onLogin']) {
			$(function() {
				if (_getCookie('ssoid')===null) {
					$('body').append( '<form id="onLoginSubmit" method="GET" target="_top" action="'+data['onLogin']+'" style="display:none;"><input type="submit"></form>' );
					function retry() {
						if (_getCookie('ssoid')===null) {
							setTimeout(retry, data['onLoginRetryPeriod']);
							return ;
						}
						$('#onLoginSubmit').submit();
						return;
					}
					retry();
				}
			});
		}
		if (debug && callback) callback(optin_data);
		trigger('started');
		return this;
	}

	function trigger(name) {
		var a=Array.prototype.slice.call(arguments);
		if (a.length>1) a=a.slice(1); else a=null;
		if (name in listeners) {
			$.each(listeners[name], function(e) {return listeners[name][e].apply(this,a);} );
		}
	}

	// Internal functions
	function _existingCustomer() {
		var previous=_getCookie('ssoid') || _getCookie('alog') || _getCookie('clog') || _getCookieFromStem('Betex_') || /\|Y\|/.test(_getCookie('userhistory')) ;
		return previous;
	};

	function _isMobile() {
		var ua = (navigator.userAgent||navigator.vendor||window.opera);
		var reg1 = /android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od|ad)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(ua);
		var reg2 = /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i.test(ua.substr(0,4));
		if (reg1 || reg2)
		{
			return true;
		}

		return false;
	}

	function _getCookie(name, subcookie, sep) {
        var result=null, i, c;
        subcookie=subcookie || '';
        sep=sep || '~';
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for ( i=0;i < ca.length; i++) {
            c = ca[i];
            while (c.length>0 && c.charAt(0)==' ') c = c.substring(1);
            if (c.indexOf(nameEQ) == 0) {
                result=unescape(c.substring(nameEQ.length,c.length));
                break;
            }
        }
        if (result!==null && subcookie!=='') {

            result=result.split(sep);
            for ( i=0;i < result.length; i++) {
                c = result[i].split('=');
                if (c.length>1 && c[0]===subcookie) {
                    result=c[1];
                    break;
                }
            }
        }

        return result;
    }

	function _getCookieFromStem(key) {
		var result ;
		return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + ('[^=]*') + '=([^;]*)').exec(document.cookie)) ? decodeURIComponent(result[1]) : null;
	};
	function _getOptinStatusResponse(ddata) {
		var fromDate, toDate, nowDate,i;
		trigger('log', '_getOptinStatusResponse', ddata);
		
		// Copy new standrd layout to old as temporary fix
		if (ddata.optinResponse && ddata.optinResponse['return'] && ddata.optinResponse['return'].data && ddata.optinResponse['return'].data.response) {
			ddata.state=ddata.state || ddata.optinResponse['return'].state || '';
			ddata.message=ddata.message || ddata.optinResponse['return'].message || '';
			ddata.optinResponse['return'].data.message=[
				{
					actioned: ddata.optinResponse['return'].data.response.actioned, 
					data: ddata.optinResponse['return'].data.response.data,
					id: ddata.optinResponse['return'].data.response.id
				},
				ddata.optinResponse['return'].data.response.message
			];
			ddata.optinResponse['return'].readDate=ddata.optinResponse['return'].data.response.readDate;
			ddata.optinResponse['return'].readDateTime=ddata.optinResponse['return'].data.response.readDateTime;
		}

		
		if (ddata.state=="success" && ddata.optinResponse && ddata.optinResponse['return'] ) {
			try {
				optin_data=eval("("+ddata.optinResponse['return'].data.message[0].data+")");
			} catch (e) {
				optin_data={};
			}
		}
		for (i in data['optinOverlay']) {
			optin_data[i]=data['optinOverlay'][i];
		}
		if (ddata.state=="success" && ddata.optinResponse['return'].data.loggedIn==true ) {
			STATELY.set('session','y');
			session=true;
		} else {
			STATELY.set('session','n');
			session=false;
		}
		if (ddata.state=="success" && data['wmid']!=0 && (ddata.message=="UNKNOWN_MESSAGE" || (session===true && ddata.optinResponse['return'].data.message[0].id==-1))) {
			// Ineligible response, maybe?
			STATELY.set('optin','x');
			optin='x';
			if (optin_data.allowed===false) {
				STATELY.set('allowed', 'n');
			}
		}
		if (ddata.state=="success") {
			if (session) {
				customerMessageId=ddata.optinResponse['return'].data.message[0].id;
				if (customerMessageId>-1) {
					if (optin_data.optin==true) {
						STATELY.set('optin','y');
						optin='y';
					} else if (optin_data.optin==false) {
						STATELY.set('optin','n');
						optin='n';
					}
				}
			}

			// Catch a normal WM not meant for optin
			if (data['wmid']!=0 && !('optin' in optin_data)) {
				trigger('log', "Trying to use a non optin WM.");
				STATELY.set('optin','x');
				optin='x';
			}

			if (typeof(optin_data.active)!=="boolean") {
				if (typeof(optin_data.active)==="undefined") {
					trigger('log',ddata.optinResponse['return'].data.message[1]);
					fromDate=Date.parse(ddata.optinResponse['return'].data.message[1].fromDateTime);
					toDate=Date.parse(ddata.optinResponse['return'].data.message[1].toDateTime);
					nowDate=optin_data.datetime;
					optin_data.active=(nowDate>=fromDate)&&(nowDate<=toDate);
				} else {
					window.console && console.error && console.error("Unexpected non-boolean response in data.active.");
				}
			}
			if (optin_data.active===false) {
				STATELY.set('expired', 'y');
				if (optin_data.optin===false)  {
					optin='inactive';
					STATELY.set('optin', optin);
				}
			}
		}
		else if (ddata.state=="error" && ddata.message=="AUTHENTICATION_ERROR") {
			STATELY.set('session','n');
			session=false;
			STATELY.set('optin','n');
			optin='n';
		}
		else {
			window.console && console.error && console.error("Unexpected response:",ddata);
		}
		_mergeParams();
		if (optin_data['select']) {
			ddata['select']=optin_data['select'];
			STATELY.set('select', ddata['select']);
		}
		
		optin_data=trigger('gotOptinStatus', optin_data) || optin_data;

		$(_mergeDataToDom);
	}


	function _getOptinStatus( id, done, fail ) {
		if ($.isFunction(done)==false) done=null;
		if ($.isFunction(fail)==false) fail=null;
		trigger('getOptinStatus', id);
		trigger('log', '_getOptinStatus', id);
		if (id==null || debug===true) {
			optin_data=data['optinOverlay'];
			if (done) done();
			return;
		}

		var timeout=window.setTimeout( function() {
				_mergeParams();
				STATELY.set('session','error');
				session=false;
				STATELY.set('optin','error');
				optin='n';
				if (fail) fail();
		}, data['ajax_timeout']);
		
		$.ajax({
			type: 'GET',
			contentType: 'application/javascript',
			url: data.endpoints.optin+'?callback=?',
			data: { 'messageId' : id, 'client': 'optin', 'response': 'application/jsonp'},
			dataType: 'jsonp',
			success: function(d) {
				window.clearTimeout(timeout);
				_getOptinStatusResponse(d);
				if (done) done(d);
			},
			timeout: data['ajax_timeout'],
			error: function(d,e,f) {
				window.console && console.error && console.error(d,e,f);
				window.clearTimeout(timeout);
				_mergeParams();
				STATELY.set('session','error');
				session=false;
				STATELY.set('optin','error');
				optin='n';
				if (fail) fail();
			}
		});

	}

	function _resetDom() {
		$("*[class^='save-'],*[class*=' save-']").each(function(i,e) {
			var set_reg;

			set_reg=/(?:^| )save-([^ ]*)/.exec(e.className);
			while (set_reg) {
				$(e).removeClass("save-"+set_reg[1]);
				$(e).addClass("set-"+set_reg[1]);
				set_reg=/(?:^| )save-([^ ]*)/.exec(e.className);
			}
		}) ;
	}


	function _mergeDataToDom() {
		$("*[class^='set-'],*[class*=' set-']").each(function(i,e) {
			var suffix, set_reg, set_tokens, p, v, is_map;

			set_reg=/(?:^| )set-([^ ]*)/.exec(e.className);
			while (set_reg) {
				set_tokens=set_reg[1].split('-');
				p=set_tokens[0];
				is_map=/([a-zA-Z][a-zA-Z-_]*)([0-9]+)/.exec(p);
				if (is_map && is_map[1] in optin_data && /,/.test(optin_data[is_map[1]])) {
					v=optin_data[is_map[1]] || '';
					if (typeof(v)==="string") v=v.split(',');
					v=v.length>is_map[2]?v[is_map[2]]:'';
				} else {
					v=optin_data[p];
				}
				if (set_tokens.length==1) {
					$(e).html(v);
				} else {
					if (set_tokens.length>=3) suffix=set_tokens.splice(2).join('-'); else suffix="";
					if (set_tokens[1]==="html") {
						$(e).html(v+suffix);
					}	else if (set_tokens[1]==="class") {
						$(e).addClass(v+suffix) ;
					}
					else if (set_tokens[1]==="preclass") {
						$(e).addClass(suffix+v) ;
					}
					else if (set_tokens[1]==="value") $(e).val(v+suffix) ;
					else $(e).css(set_tokens[1], v+suffix);
				}
				$(e).removeClass("set-"+set_reg[1]);
				$(e).addClass("save-"+set_reg[1]);
				set_reg=/(?:^| )set-([^ ]*)/.exec(e.className);
			}
		}) ;

	}

	function _mergeParams() {
		if (!debug) return;
		var p=['select','summary', 'expired', 'resubmit'],i;
		for (i=0;i<p.length;i++) {
			if (typeof(params[p[i]])!=="undefined") optin_data[p[i]]=params[p[i]];
		}

	}
	function _parseQuery(q) {
		var p,t,i ;

		q=q?q:window.location.search.substring(1);
		q=q.replace(/;/g,'&').split('&');
		p={};

		for (i = 0; i < q.length; i++ ) {
			if (q[i].length===0) continue;
			t = q[i].split('=');
			if (t.length==1) {
				if (t[0].slice(-1)==='+' || t[0].slice(-1)==='-') {
					p[t[0].slice(0,-1)]=(t[0].slice(-1)==='+' )?true:false;
				} else {
					p[t[0]]=true;
				}
			} else if (t.length>1) {
				p[t[0]]=unescape(t[1]).replace('+',' ');
			}
		}
		return p;
	}

	function _recordAction( action, done, ineligible, fail) {
		if ($.isFunction(done)===false) done=null;
		if ($.isFunction(fail)===false) fail=null;
		if ($.isFunction(ineligible)===false) ineligible=null;
		trigger('log', '_recordAction', action, done, ineligible, fail);
		if (debug) {
			alert('recordAction '+action);
			if (done) done();
			return;
		}

		if (customerMessageId > -1 && action.length > 0) {
			var param = {customerMessageId: customerMessageId, action: action};
			$.ajax({
				url: baseUrl + serviceFragment + "recordAction" + tailFragment,
				crossDomain: true,
				dataType: 'json',
				data: param,
				jsonpCallback: 'recordActionSuccess',
				timeout: data['ajax_timeout'],
				success: function(d) {
					if (d.recordActionResponse['return'].state=="error" && d.recordActionResponse['return'].message=="Cannot record action") {
						if (ineligible) ineligible(d);
						trigger('_recordAction', customerMessageId, action, 'ineligible', d);
					} else if (d.recordActionResponse['return'].state=="success") {
						if (done) done(d);
						trigger('_recordAction', customerMessageId, action, 'success', d);
						if (data['ga'] && (typeof ga!=='undefined') && $.isFunction(ga) && action.split('|')[0]==='optin')  ga('send', 'event', 'promotions-optins', window.location.pathname.split('/')[1], window.location.pathname.split('/')[1]+'-'+action.split('|')[0]);
					} else {
						trigger('_recordAction', customerMessageId, action, 'unexpected',d);
					}
				},
				error: function(jqXHR, textStatus, errorThrown) {
					window.console && console.error && console.error("Error calling "+baseUrl + serviceFragment + "getMessageData" + tailFragment,jqXHR, textStatus, errorThrown);
					if (fail) fail(jqXHR, textStatus, errorThrown);
					trigger('_recordAction', customerMessageId, action, 'error', jqXHR, textStatus, errorThrown);
				}
			}) ;
		} else {
			window.console && console.error && console.error('Customer message id  is '+customerMessageId);
			if (ineligible) ineligible();
			trigger('_recordAction', customerMessageId, action, 'error');
		}


	}

	function _setCookie(name,value,days,path, domain) {
		path=path || '/';
		domain=domain || parentDomain;
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path="+path+"; domain="+domain+";";
		return ;
	}

	function _setVariants(v) {
		var i, names=[], weights=[];
		if ($.isArray(v)===false) {
			window.console && console.error && console.error("setVariants needs an array of variants");
			return;
		}

		for (i=0; i<v.length; i++) {
			if (typeof(v[i])==="string") {
				names.push(v[i]);
			}
		}
		if (names.length>0) {
			STATELY.group('variant', names);
			if ('variant' in params) STATELY.set('variant', params['variant']);
		}
	}


	addCSS("body .loaded, body .loaded-y {visibility:hidden; } body.loaded .loaded, body.loaded-y .loaded-y{visibility:visible;} #destination {visibility: visible;}");
	STATELY.setLoadState(false);
	STATELY.set('debug', debug );
	STATELY.group('session',[ 'n','y', 'error']);
	STATELY.group('optin', [ 'n', 'y', 'x', 'submit', 'inactive', 'error']);
	STATELY.group('soft', ['n', 'y']);
	STATELY.group('prospect',['y','n']);
	STATELY.set('prospect', _existingCustomer()?'n':'y');
	STATELY.group('mobile', ['n','y']);
	STATELY.group('resubmit', ['n','y']);
	STATELY.group('allowed-y,n');
	STATELY.group('select',['0', '1', '2','3', '4', '5'], null, 'color: gray;' );
	STATELY.group('expired',['n','y']);
	STATELY.group('loaded',['n','y']);
	STATELY.group('app',['na', 'ios', 'android']);

	// Override the presentation of the dummy, unselected select state
	addCSS("body.select-0 .select-1, body.select-0 .select-2, body.select-0 .select-3, body.select-0 .select-4, body.select-0 .select-5 {color: black !important;}");

	if (params['soft']===undefined && params['softlanding']!==undefined) params['soft']=params['softlanding'] ;
	app=params['app']||app;
	debug=(params['debug']===true || params['debug']==='true' || params['debug']==='y') ;
	soft=params['soft']===true || (params['soft']==='true' || params['soft']==='y');
	session=(params['session']===true || params['session']==='true' || params['session']=='y');
	loading=(params['loading']===true || params['loading']==='true' || params['loading']==='y');

	data['debug']=debug;

	if (_isMobile()) {
		STATELY.set('mobile', 'y');
		soft=false;
	}

	if (params['optin']!==undefined) optin=params['optin'];
	if (optin===true || optin==='true') optin='y';
	else if (optin===false || optin==='false') optin='n';

	STATELY.set('app', app);
	STATELY.set('soft', (soft?'y':'n') );
	if (debug) {
		STATELY.set('session', params['session'] || 'n' );
		if (params['session']=='error') optin=error;
		STATELY.set('optin', optin || 'n');
	}

	$(function() {
		var j, opts, f, found_form=false, p, n, e;

		if (data['wmid']===null) {
			$("*[class^='optinbutton-'],*[class*=' optinbutton-']").each(function(i,e) {
				var c=/(?:^| )optinbutton-([^ ]*)/.exec(e.className);
				if (c) data['wmid']=c[1];
			});
		}
		
		if (started===false) start();

		// Catch references to registration to adjust the promotionCode
		// if urlparam promocode != blank
		$(".promotioncode").each(function(i,e) {
			if ($(e).attr('href')) {

			}
		});

		// Fix destination of CTA
		$('#betnow').attr('href',data['destination'] || data['background'] || "https://www.betfair.com");

		// Removed disabled class from optin if any radio buttons clicked
		$("input[type='radio']").on("click",function(e) {
			data['select']=$(e.target).val();
			$(".optinbutton, .loginbutton, *[class^='optinbutton-'],*[class*=' optinbutton-']").removeClass('disabled');
		} );

		// Catch opt in button
		$(".optinbutton, .loginbutton, *[class^='optinbutton-'],*[class*=' optinbutton-']").on('click',function(ev){
			ev.preventDefault();
			if ($(ev.target).hasClass('disabled')) return;
			var e=ev.target, code=data['wmid'], c, r,rr;
			c=/(?:^| )optinbutton-([^ ]*)/.exec(e.className);
			if (c) code=c[1];
			if (trigger("optinbutton")===false) return;
			
			if (session===false) {
				if (($('#username').val()!=='' && $('#password').val()!=='') || login_form===null) {
					if (data['select']) data['redirectParams']['select']=data['select'];
					r="";
					$.each(data['redirectParams'], function(e,i) {
						r+=(r.length?"&":"")+e+"="+data['redirectParams'][e];
					});
					
					rr=$('#redirecturl').val() || window.location.origin+window.location.pathname;
					rr+=(/\?/.test(rr)?'&':'?')+'p='+btoa(r);
					$('#redirecturl').val(rr);
					if (debug) alert(rr);
					else login_form.submit();
				}
			}	else {

				optIn( );
			}
			return false;
		});

		// Fix elements that are copies of others
		$("*[class^='copy-'],*[class*=' copy-']").each(function(i,e) {
			var c=/(?:^| )copy-([^ ]*)/.exec(e.className);
			if (c) $(e).html( $('#'+c[1]).html() ) ;
		});

		
		// If there are no forms, put one around any present optinbutton if there's only one
		if ($('form').length===0 && $(".optinbutton, .loginbutton, *[class^='optinbutton-'], *[class*=' optinbutton-']").length===1) {
			e=$(".optinbutton, .loginbutton, *[class^='optinbutton-'], *[class*=' optinbutton-']");
			p=e.parent();
			n=e.next();
			e=e.detach();
			f=$('<form>').append(e);
			if (n.length===0) p.append(f);
			else $(n,p).before(f);
		}
		
		$(".optinbutton, *[class^='optinbutton-'], *[class*=' optinbutton-']").each(function(i,e) {
			$(e).addClass('loaded-y');
		});
		$(".loginbutton").each(function(i,e) {
			$(e).addClass('loaded-y');
		});
		
		// Fix login form (autocomplete, hidden fields, method, action, return, et)
		$('form').each(function(i,e) {
			if ($('input#username',e).length==1 && $('input#password',e).length==1 && $(".optinbutton, .loginbutton, *[class^='optinbutton-'], *[class*=' optinbutton-']", e).length>=1) {
				found_form=true;
				login_form=e;
				
				$(e).attr( { method:'POST', action: 'https://identitysso.'+parentDomain+'/api/login', target: '_top'} );
				$('input#username',e).attr({autocomplete:'off', 'name': 'username' }).addClass('session-n').addClass('loaded-y');
				$('input#password',e).attr({autocomplete:'off', 'name':'password'}).addClass('session-n').addClass('loaded-y');
				if ($('input[name=product]',e).length==0) {
					$(e).append('<input type="hidden" name="product" value="'+data['redirectProduct']+'">');
				}
				if ($('input[name=url]', e).length==0) {
					$(e).append('<input id="redirecturl" type="hidden" name="url" value="'+data['redirectUrl']+'" >');
				}
				if ($('input[name=redirectMethod]',e).length==0) {
					$(e).append('<input type="hidden" name="redirectMethod" value="'+data['redirectMethod']+'">');
				}
				return false;
			} else if ( $(".optinbutton, *[class^='optinbutton-'], *[class*=' optinbutton-']", e).length>=1) {
				login_form=e;
				if ($('input[name=product]',e).length==0) {
					$(e).append('<input type="hidden" name="product" value="'+data['redirectProduct']+'">');
				}
				if ($('input[name=url]', e).length==0) {
					$(e).append('<input id="redirecturl" type="hidden" name="url" value="'+data['redirectUrl']+'" >');
				}
				if ($('input[name=redirectMethod]',e).length==0) {
					$(e).append('<input type="hidden" name="redirectMethod" value="'+data['redirectMethod']+'">');
				}
				$(e).attr( { method:'GET', action: 'https://identitysso.'+parentDomain+'/view/login', target: '_top'} );
			}
		});

		if (found_form===false) {
			trigger('log', 'onload', "No login form found.");
		}
		if (soft) {
			$('body').append('<div id="fullscreen" class="fullscreen" style="background-color: black;" title="Click to close message"></div><iframe id="destination" '+(data['iframe'] || 'frameborder="0" marginheight="0px" marginwidth="0px" scrolling="no" hspace="0px" vspace="0"')+' src="'+data['background']+'"></iframe>')
			$('#fullscreen').on('click',function() {
				window.location.replace(data['destination']!=null?data['destination']:data['background']);
			});
		}

		trigger('loaded');

		if (('test' in params && params['test']==='y') || ('testmode' in params && (params.testmode==1 || params.testmode==2 || params.testmode==3))) {
			function _reset() {
				var o={};
				$('#testpanel input[type="text"][name^="value-"]').each(function(i,e) {
					o[$(e).attr('name').split('-')[1]]=$(e).val();
				});
				$('#testpanel input[type="checkbox"][name^="value-"]').each(function(i,e) {
					o[$(e).attr('name').split('-')[1]]=$(e).prop('checked');
				});
				LP.set('optinOverlay',o);
				restart();
			}
			addCSS('#testpanel .test-option input {vertical-align: bottom;} #testpanel .testpanel-mode {margin:0.25em;} #testpanel .test-state label {width: 7em;} #testpanel .test-option, #testpanel .test-data {display: inline-block;margin-left: 1em;} #testpanel .test-state { display: inline-block;width: 48%;} #testpanel {z-index: 1000; font-size: 1em; background-color: #EEC ; text-align: left; color: black; border-top: thin solid black ; border-right: thin solid black; padding:0.5em; position: fixed; bottom: 0;} #testpanel input[name="value-select"] { width: 2em;} #testpanel input,#testpanel select{height:inherit!important;width:inherit!important;line-height:inherit!important;text-indent:inherit!important;margin-bottom:inherit!important;padding:inherit!important;} #testpanel .test-state label{display:inherit!important;margin-bottom:inherit!important;font-weight:inherit!important;width:inherit!important;} #testpanel .test-state > label{width:5em!important;} #testpanel .testpanel-mode{margin:.25em!important;} #testpanel input[type=button],button{padding:1px 6px!important;}');
			$('body').append('<div id="testpanel" ></div>')
			STATELY.on('change', function(name,state) {
				$('input[name="state-'+name+'"][value="'+state+'"]').click();
			});
			STATELY.on('started',function(states,current) {
				var i,j,h,k, opts, auto_update=true;

				opts={'active':optin_data['active'], 'datetime': optin_data['datetime'], 'optin': optin_data['optin'], 'select': optin_data['select'], 	'summary':optin_data['summary']};

				$('#testpanel').append('<div class="testmode-1"><input type="button" value="Basic" class="testpanel-mode"><select id="test-basic"></select></div><div class="testmode-2"><input type="button" value="Moderate" class="testpanel-mode"></div><div class="testmode-3"><input type="button" value="Advanced" class="testpanel-mode"><br/></div>');
				var basic={
					0: '--- Choose a status for the customer ---',
					1: 'Page still loading',
					2: 'Logged out, prospect',
					3: 'Logged out, customer',
					31: 'Logged out, ineligible',
					32: 'Logged out, campaign inactive',
					33: 'Logged in, ineligible',
					4: 'Logged in, not opted in, campaign active',
					5: 'Logged in, not opted in, campaign expired',
					6: 'Logged in, opted in, campaign active',
					7: 'Logged in, opted in, campaign expired',
					8: 'Logged in, submitting opt in',
					9: 'Logged in, after resubmitting an optin',
					10:'Logged in, customer blacklisted',
					99: 'System error'
				};
				var basic_states={
					0: {},
					1: { 'loaded': 'n', 'session' : 'n', 'prospect': 'n', 'expired' : 'n', 'optin': 'n', 'resubmit' : 'n', 'select': '0', 'allowed':'y'},
					2: { 'loaded': 'y', 'session' : 'n', 'prospect': 'y', 'expired' : 'n', 'optin': 'n', 'resubmit' : 'n', 'select': '0', 'allowed':'y'},
					3: { 'loaded': 'y', 'session' : 'n', 'prospect': 'n','expired' : 'n', 'optin': 'n', 'resubmit' : 'n', 'select': '0', 'allowed':'y'},
					31: { 'loaded': 'y', 'session' : 'n', 'optin': 'x', 'expired' : 'n', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'},
					32: { 'loaded': 'y', 'session' : 'n', 'optin': 'inactive', 'expired' : 'y', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'},
					33: { 'loaded': 'y', 'session' : 'y', 'optin': 'x', 'expired' : 'n', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'},
					4: { 'loaded': 'y', 'session' : 'y', 'optin': 'n', 'expired' : 'n', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'},
					5: { 'loaded': 'y', 'session' : 'y', 'optin': 'inactive', 'expired': 'y', 'resubmit' : 'n', 'prospect' : 'n', 'select' : '0', 'allowed':'y'},
					6: { 'loaded': 'y', 'session' : 'y', 'optin': 'y', 'expired': 'n', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'},
					7: { 'loaded': 'y', 'session' : 'y', 'optin': 'y', 'expired': 'y', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'},
					8: { 'loaded': 'y', 'session' : 'y', 'optin': 'submit', 'expired': 'n', 'select' :'1', 'resubmit': 'n', 'prospect' : 'n', 'allowed':'y'},
					9: { 'loaded': 'y','session' : 'y', 'optin': 'y', 'select': '1', 'resubmit': 'y', 'expired' : 'n', 'prospect': 'n', 'allowed':'y'},
					10: { 'loaded': 'y','session' : 'y', 'optin': 'x', 'select': '1', 'resubmit': 'y', 'expired' : 'n', 'prospect': 'n', 'allowed':'n'},
					99: {'loaded': 'y', 'session': 'error', 'optin': 'error', 'expired': 'n', 'resubmit' : 'n', 'prospect' : 'n', 'select': '0', 'allowed':'y'}
				};
				for (j in basic) {
					$('#testpanel #test-basic').append('<option value="'+j+'">'+basic[j]+'</option>');
				}
				for (j in opts) {
					if (typeof(opts[j])=='boolean') {
						$('.testmode-2').append('<div class="test-data"><label>'+j+'</label><input type="checkbox" name="value-'+j+'" '+(opts[j]?'checked':'')+'></div>');
					} else {
						$('.testmode-2').append('<div class="test-data"><label>'+j+'</label><input type="text" name="value-'+j+'" value="'+opts[j]+'"></div>');
					}
				}
				$('.testmode-2').append(' <input id="testrestart" type="button" value="Restart">');

				for (i in states) {
					h='<div class="test-state"><label>'+i+'</label> : ';
					for (j in states[i].a) {
						if (states[i].a[j]==current[i]) k='checked'; else k='';
						h+='<div class="test-option"><label>'+states[i].a[j]+'</label> <input type="radio" name="state-'+i+'" value="'+states[i].a[j]+'" '+k+'></div>';
					}
					h+='</div>';
					$('.testmode-3').append(h);
				}

				STATELY.group('testmode-1,2,3');
				if (LP.get().params.testmode) STATELY.set('testmode', LP.get().params.testmode);

				$('#testpanel #testrestart').on('click', _reset);
				$('.testpanel-mode').on('click', function() {
					var m=parseInt(STATELY.get('testmode'))+1;
					if (m>3) m=1;
					STATELY.set('testmode',m);
				});

				$('#testpanel #test-basic').on('change', function(ev) {
					var v=$(ev.target).val(), s=basic_states[v],  j;
					for (j in s) {
						STATELY.set(j,s[j]);
					}
				});

				$('.test-option input').on('change', function(ev) {
					if (auto_update==false) return;
					auto_update=false;
					var n=$(ev.target).attr('name').split('-')[1];
					var v=$(ev.target).val();
					STATELY.set(n,v);
					if (n=='optin') {
						STATELY.set('loaded','y');
						if (v=='error') STATELY.set({'session':v, 'resubmit':'n', 'select': '0'});
						else if (v=='y') {
							STATELY.set({'session':v, 'prospect': 'n'});
							if (STATELY.get('select')=='0') STATELY.set('select', '1');
						} else if (v=='inactive') STATELY.set({'expired': 'y', 'select': '0', 'resubmit': 'n'});
						else if (v=='x') STATELY.set({'session': 'n', 'select':'0', 'resubmit': 'n'});
					} else if (n=='session') {
						if (v=='error') STATELY.set({'optin':v, 'resubmit':'n', 'select': '0'});
						else if (v=='n') {
							if ($.inArray(STATELY.get('optin'), ['y', 'error', 'submit', 'x'])>=0) STATELY.set('optin','n');
						} else if (v=='y') {
							STATELY.set({'prospect':'n'});
						}
					} else if (n=='expired') {
						if (v=='y' && STATELY.get('optin')!='y') STATELY.set('optin','inactive');
						else if (v=='n' && STATELY.get('optin')=='inactive') STATELY.set({'optin':'n', 'select':'0'});
					}
					auto_update=true;
				});
			});
		}
	});


	return { version: function() {return "1.14e";}, optIn: optIn, recordAction: _recordAction, bounceIf: bounceIf, addCSS: addCSS, start: start, get: get, set: set, on: on, trigger: trigger, restart: restart, exchangeMarket: exMarket, exchangeEvent: exEvent, sportsbookMarket: spMarket, cookie: _cookie, getCookie: _getCookie} ;
})();

/* Placeholders.js v2.1.0 */
!function(a){"use strict";function b(a,b,c){return a.addEventListener?a.addEventListener(b,c,!1):a.attachEvent?a.attachEvent("on"+b,c):void 0}function c(a,b){var c,d;for(c=0,d=a.length;d>c;c++)if(a[c]===b)return!0;return!1}function d(a,b){var c;a.createTextRange?(c=a.createTextRange(),c.move("character",b),c.select()):a.selectionStart&&(a.focus(),a.setSelectionRange(b,b))}function e(a,b){try{return a.type=b,!0}catch(c){return!1}}a.Placeholders={Utils:{addEventListener:b,inArray:c,moveCaret:d,changeType:e}}}(this),function(a){"use strict";function b(){}function c(a){var b;return a.value===a.getAttribute(G)&&"true"===a.getAttribute(H)?(a.setAttribute(H,"false"),a.value="",a.className=a.className.replace(F,""),b=a.getAttribute(I),b&&(a.type=b),!0):!1}function d(a){var b,c=a.getAttribute(G);return""===a.value&&c?(a.setAttribute(H,"true"),a.value=c,a.className+=" "+E,b=a.getAttribute(I),b?a.type="text":"password"===a.type&&R.changeType(a,"text")&&a.setAttribute(I,"password"),!0):!1}function e(a,b){var c,d,e,f,g;if(a&&a.getAttribute(G))b(a);else for(c=a?a.getElementsByTagName("input"):o,d=a?a.getElementsByTagName("textarea"):p,g=0,f=c.length+d.length;f>g;g++)e=g<c.length?c[g]:d[g-c.length],b(e)}function f(a){e(a,c)}function g(a){e(a,d)}function h(a){return function(){q&&a.value===a.getAttribute(G)&&"true"===a.getAttribute(H)?R.moveCaret(a,0):c(a)}}function i(a){return function(){d(a)}}function j(a){return function(b){return s=a.value,"true"===a.getAttribute(H)&&s===a.getAttribute(G)&&R.inArray(C,b.keyCode)?(b.preventDefault&&b.preventDefault(),!1):void 0}}function k(a){return function(){var b;"true"===a.getAttribute(H)&&a.value!==s&&(a.className=a.className.replace(F,""),a.value=a.value.replace(a.getAttribute(G),""),a.setAttribute(H,!1),b=a.getAttribute(I),b&&(a.type=b)),""===a.value&&(a.blur(),R.moveCaret(a,0))}}function l(a){return function(){a===document.activeElement&&a.value===a.getAttribute(G)&&"true"===a.getAttribute(H)&&R.moveCaret(a,0)}}function m(a){return function(){f(a)}}function n(a){a.form&&(x=a.form,x.getAttribute(J)||(R.addEventListener(x,"submit",m(x)),x.setAttribute(J,"true"))),R.addEventListener(a,"focus",h(a)),R.addEventListener(a,"blur",i(a)),q&&(R.addEventListener(a,"keydown",j(a)),R.addEventListener(a,"keyup",k(a)),R.addEventListener(a,"click",l(a))),a.setAttribute(K,"true"),a.setAttribute(G,v),d(a)}var o,p,q,r,s,t,u,v,w,x,y,z,A,B=["text","search","url","tel","email","password","number","textarea"],C=[27,33,34,35,36,37,38,39,40,8,46],D="#ccc",E="placeholdersjs",F=new RegExp("(?:^|\\s)"+E+"(?!\\S)"),G="data-placeholder-value",H="data-placeholder-active",I="data-placeholder-type",J="data-placeholder-submit",K="data-placeholder-bound",L="data-placeholder-focus",M="data-placeholder-live",N=document.createElement("input"),O=document.getElementsByTagName("head")[0],P=document.documentElement,Q=a.Placeholders,R=Q.Utils;if(Q.nativeSupport=void 0!==N.placeholder,!Q.nativeSupport){for(o=document.getElementsByTagName("input"),p=document.getElementsByTagName("textarea"),q="false"===P.getAttribute(L),r="false"!==P.getAttribute(M),t=document.createElement("style"),t.type="text/css",u=document.createTextNode("."+E+" { color:"+D+"; }"),t.styleSheet?t.styleSheet.cssText=u.nodeValue:t.appendChild(u),O.insertBefore(t,O.firstChild),A=0,z=o.length+p.length;z>A;A++)y=A<o.length?o[A]:p[A-o.length],v=y.attributes.placeholder,v&&(v=v.nodeValue,v&&R.inArray(B,y.type)&&n(y));w=setInterval(function(){for(A=0,z=o.length+p.length;z>A;A++)y=A<o.length?o[A]:p[A-o.length],v=y.attributes.placeholder,v&&(v=v.nodeValue,v&&R.inArray(B,y.type)&&(y.getAttribute(K)||n(y),(v!==y.getAttribute(G)||"password"===y.type&&!y.getAttribute(I))&&("password"===y.type&&!y.getAttribute(I)&&R.changeType(y,"text")&&y.setAttribute(I,"password"),y.value===y.getAttribute(G)&&(y.value=v),y.setAttribute(G,v))));r||clearInterval(w)},100)}Q.disable=Q.nativeSupport?b:f,Q.enable=Q.nativeSupport?b:g}(this);