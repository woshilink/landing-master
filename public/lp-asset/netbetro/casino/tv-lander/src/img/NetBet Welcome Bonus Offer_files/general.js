//popups
function popup (linkAddress,w,h,s) { window.open(linkAddress, "WSOPE","width="+w+",height="+h+",status=0,scrollbars="+s+"");}

// SWF OBJECT FUNCTIONS
function writeFlash(p) {
	writeEmbed(
		'D27CDB6E-AE6D-11cf-96B8-444553540000',
		'https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0',
		'application/x-shockwave-flash',
		p
	);
}

function createFlash(p, target_div, timeout) 
{
	var h = '', n;

	h += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"';
	h += typeof(p.id) != "undefined" ? 'id="' + p.id + '"' : '';
	h += typeof(p.name) != "undefined" ? 'name="' + p.name + '"' : '';
	h += typeof(p.width) != "undefined" ? 'width="' + p.width + '"' : '';
	h += typeof(p.height) != "undefined" ? 'height="' + p.height + '"' : '';
	h += typeof(p.align) != "undefined" ? 'align="' + p.align + '"' : '';
	h += '>';

	for (n in p)
	{
		h += '<param name="' + n + '" value="' + p[n] + '">';
	}
	
	h += '<embed type="application/x-shockwave-flash"';

	for (n in p)
	{
		h += n + '="' + p[n] + '" ';
	}
	
	h += '></embed></object>';
	
	h = '<div class="flash_control">' + h + '</div>';
	
	var td = document.getElementById(target_div);
	if (td)
	{
		setTimeout(function() {writeDivContent(td, h); }, timeout, td, h);
	}
}

function writeDivContent(div_object, content)
{
	div_object.innerHTML = content;
}

function writeShockWave(p) {
	writeEmbed(
	'166B1BCA-3F9C-11CF-8075-444553540000',
	'https://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=8,5,1,0',
	'application/x-director',
		p
	);
}

function writeQuickTime(p) {
	writeEmbed(
		'02BF25D5-8C17-4B23-BC80-D3488ABDDC6B',
		'https://www.apple.com/qtactivex/qtplugin.cab#version=6,0,2,0',
		'video/quicktime',
		p
	);
}

function writeRealMedia(p) {
	writeEmbed(
		'CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA',
		'https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0',
		'audio/x-pn-realaudio-plugin',
		p
	);
}

function writeWindowsMedia(p) {
	p.url = p.src;
	writeEmbed(
		'6BF52A52-394A-11D3-B153-00C04F79FAA6',
		'https://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701',
		'application/x-mplayer2',
		p
	);
}

function writeEmbed(cls, cb, mt, p) {
	var h = '', n;

	h += '<object classid="clsid:' + cls + '" codebase="' + cb + '"';
	h += typeof(p.id) != "undefined" ? 'id="' + p.id + '"' : '';
	h += typeof(p.name) != "undefined" ? 'name="' + p.name + '"' : '';
	h += typeof(p.width) != "undefined" ? 'width="' + p.width + '"' : '';
	h += typeof(p.height) != "undefined" ? 'height="' + p.height + '"' : '';
	h += typeof(p.align) != "undefined" ? 'align="' + p.align + '"' : '';
	h += '>';

	for (n in p)
		h += '<param name="' + n + '" value="' + p[n] + '">';

	h += '<embed type="' + mt + '"';

	for (n in p)
		h += n + '="' + p[n] + '" ';

	h += '></embed></object>';
	
	if (cls == 'D27CDB6E-AE6D-11cf-96B8-444553540000') // flash
	{
		h = '<div class="flash_control">' + h + '</div>';
	}
	document.write(h);
}

function getValue(field)
{
	var result = '';
	
	if (document.forms['form'].elements[field])
	{
		var type = document.forms['form'].elements[field].type;
		if (type == undefined)
		{
			type = document.forms['form'].elements[field][0].type;
		}
		
		if (type == 'select-one')
		{
			result = document.forms['form'].elements[field][document.forms['form'].elements[field].selectedIndex].value;
		}		
		else if (type == 'checkbox')
		{
			result = (document.forms['form'].elements[field].checked) ? 1 : '';
		}	
		else if (type == 'radio')
		{
			var radioLength = document.forms['form'].elements[field].length;
			if (radioLength == undefined)
			{
				if (document.forms['form'].elements[field].checked)
				{
					result = document.forms['form'].elements[field].value;
				}
				else
				{
					result = "";
				}
			}
			
			for (var i = 0; i < radioLength; i++) 
			{
				if (document.forms['form'].elements[field][i].checked) 
				{
					result = document.forms['form'].elements[field][i].value;
				}
			}
		}
		else 
		{
			result = document.forms['form'].elements[field].value;
		}
	}	
	
	return result;
}


function isMobile()
{
	/*
	var ua = (navigator.userAgent||navigator.vendor||window.opera);
	var reg1 = /android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od|ad)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(ua);
	var reg2 = /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i.test(ua.substr(0,4));
	if (reg1 || reg2)
	{
		return true;
	}
	
	return false;
	*/
	
	return (device_is_mobile) ? true : false;
}

function redirectMobile(url)
{
	if (isMobile() && url != '')
	{
		window.location = url;
	}
}

function init_ajax_object() 
{
	var A;try {A=new ActiveXObject("Msxml2.XMLHTTP");} catch (e) {try {A=new ActiveXObject("Microsoft.XMLHTTP");} catch (oc) {A=null;}}if (!A && typeof XMLHttpRequest != "undefined")	{A = new XMLHttpRequest();}	if (!A)	{alert("I cannot create an object");}return A;
} 

function get_current_token()
{
	var token 	= '';
	var url 	= window.location.href;
	var parts 	= url.split("/");
	
	if (typeof(parts[3]) != 'undefined')
	{
		token = parts[3];
		token = token.substring(0, (token.indexOf('?') == -1 ? token.length : token.indexOf('?')));
		token = token.substring(0, (token.indexOf('#') == -1 ? token.length : token.indexOf('#')));
	}
	
	return token;
}

var sending = false;

function checkForm() 
{
	if (sending)
	{
		return false;
	}
	
	sending = true;
	
	var promotion_token = get_current_token();	

	var username 	= (document.forms['form'].elements['username']) ? document.forms['form'].elements['username'].value : '';
	var password 	= (document.forms['form'].elements['password']) ? document.forms['form'].elements['password'].value : '';
	var t5			= (document.forms['form'].elements['t5']) ? document.forms['form'].elements['t5'].value : '';
	var t6			= (document.forms['form'].elements['t6']) ? document.forms['form'].elements['t6'].value : '';
	var t7			= (document.forms['form'].elements['t7']) ? document.forms['form'].elements['t7'].value : '';
	var t8			= (document.forms['form'].elements['t8']) ? document.forms['form'].elements['t8'].value : '';
	var t9			= (document.forms['form'].elements['t9']) ? document.forms['form'].elements['t9'].value : '';
	
	var field1		= getValue('field1');
	var field2		= getValue('field2');
	var field3		= getValue('field3');
	var field4		= getValue('field4');
	var field5		= getValue('field5');
	var field6		= getValue('field6');
	var field7		= getValue('field7');
	var field8		= getValue('field8');
	var field9		= getValue('field9');
	var field10		= getValue('field10');
	var field11		= getValue('field11');
	var field12		= getValue('field12');
	var field13		= getValue('field13');
	var field14		= getValue('field14');
	var field15		= getValue('field15');
	var field16		= getValue('field16');
	var field17		= getValue('field17');
	var field18		= getValue('field18');
	var field19		= getValue('field19');
	var field20		= getValue('field20');
	
	var field1_message	= (document.forms['form'].elements['field1_message']) ? document.forms['form'].elements['field1_message'].value : '';
	var field2_message	= (document.forms['form'].elements['field2_message']) ? document.forms['form'].elements['field2_message'].value : '';
	var field3_message	= (document.forms['form'].elements['field3_message']) ? document.forms['form'].elements['field3_message'].value : '';
	var field4_message	= (document.forms['form'].elements['field4_message']) ? document.forms['form'].elements['field4_message'].value : '';
	var field5_message	= (document.forms['form'].elements['field5_message']) ? document.forms['form'].elements['field5_message'].value : '';
	var field6_message	= (document.forms['form'].elements['field6_message']) ? document.forms['form'].elements['field6_message'].value : '';
	var field7_message	= (document.forms['form'].elements['field7_message']) ? document.forms['form'].elements['field7_message'].value : '';
	var field8_message	= (document.forms['form'].elements['field8_message']) ? document.forms['form'].elements['field8_message'].value : '';
	var field9_message	= (document.forms['form'].elements['field9_message']) ? document.forms['form'].elements['field9_message'].value : '';
	var field10_message	= (document.forms['form'].elements['field10_message']) ? document.forms['form'].elements['field10_message'].value : '';
	var field11_message	= (document.forms['form'].elements['field11_message']) ? document.forms['form'].elements['field11_message'].value : '';
	var field12_message	= (document.forms['form'].elements['field12_message']) ? document.forms['form'].elements['field12_message'].value : '';
	var field13_message	= (document.forms['form'].elements['field13_message']) ? document.forms['form'].elements['field13_message'].value : '';
	var field14_message	= (document.forms['form'].elements['field14_message']) ? document.forms['form'].elements['field14_message'].value : '';
	var field15_message	= (document.forms['form'].elements['field15_message']) ? document.forms['form'].elements['field15_message'].value : '';
	var field16_message	= (document.forms['form'].elements['field16_message']) ? document.forms['form'].elements['field16_message'].value : '';
	var field17_message	= (document.forms['form'].elements['field17_message']) ? document.forms['form'].elements['field17_message'].value : '';
	var field18_message	= (document.forms['form'].elements['field18_message']) ? document.forms['form'].elements['field18_message'].value : '';
	var field19_message	= (document.forms['form'].elements['field19_message']) ? document.forms['form'].elements['field19_message'].value : '';
	var field20_message	= (document.forms['form'].elements['field20_message']) ? document.forms['form'].elements['field20_message'].value : '';
	
	var result = '';	
	var i, x, n;
	var uri = '/form_submit/index/';	
	var parameters = 'username='+username+'&password='+password+'&promotion_token='+promotion_token+'&t5='+t5+'&t6='+t6+'&t7='+t7+'&t8='+t8+'&t9='+t9+'&field1='+field1+'&field2='+field2+'&field3='+field3+'&field4='+field4+'&field5='+field5+'&field6='+field6+'&field7='+field7+'&field8='+field8+'&field9='+field9+'&field10='+field10+'&field11='+field11+'&field12='+field12+'&field13='+field13+'&field14='+field14+'&field15='+field15+'&field16='+field16+'&field17='+field17+'&field18='+field18+'&field19='+field19+'&field20='+field20+'&field1_message='+field1_message+'&field2_message='+field2_message+'&field3_message='+field3_message+'&field4_message='+field4_message+'&field5_message='+field5_message+'&field6_message='+field6_message+'&field7_message='+field7_message+'&field8_message='+field8_message+'&field9_message='+field9_message+'&field10_message='+field10_message+'&field11_message='+field11_message+'&field12_message='+field12_message+'&field13_message='+field13_message+'&field14_message='+field14_message+'&field15_message='+field15_message+'&field16_message='+field16_message+'&field17_message='+field17_message+'&field18_message='+field18_message+'&field19_message='+field19_message+'&field20_message='+field20_message;
	x = init_ajax_object();	
	x.open('POST', uri, true);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Content-length", parameters.length);
	x.setRequestHeader("Connection", "close");
	x.onreadystatechange = function() 
	{
		if (x.readyState != 4) {return;}
		result = x.responseText;
		if (result != '')
		{
			var result = result.split("|");
			parse_result(result[0], result[1]);
		}
	};
	x.send(parameters);
	delete x;
	
	return false;
} 

function parse_result(type, message)
{
	if (type == 'ERROR')
	{
		var f = document.getElementById('message');
		if (f)
		{
			f.innerHTML = message;
		}
		
		// run a custom js
		if (typeof form_submit_error == 'function') 
		{
			form_submit_error();
		}		
		
		sending = false;
	}
	else if (type == 'OK')
	{
		if (message == 'CALL_JS_FUNCTION')
		{
			// clear the message
			var f = document.getElementById('message');
			if (f)
			{
				f.innerHTML = '';
			}
			
			// run a custom js
			if (typeof form_submit_success == 'function') 
			{
				form_submit_success();
			} 	
			
			sending = false;
		}		
		else if (message != '')
		{
			if (message.substring(0,7) == 'http://' || message.substring(0,8) == 'https://')
			{
				location.href = message;
			}
			else
			{
				location.href = '/'+message;
			}
		}
		else
		{ // should be removed soon
			var url = (document.forms['form'].elements['success_url']) ? document.forms['form'].elements['success_url'].value : '';
			if (url != '')
			{
				location.href = '/'+url;
			}
		}
	}
} 

function isLogged() 
{
	var i, x, n;
	var result = 'false';
	var uri = '/logged/index/';	
	x = init_ajax_object();	
	x.open('GET', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Connection", "close");
	x.send();
	return (x.responseText == 'YES') ? true : false;
}

function getTotalOptins() 
{
	var i, x, n;
	var uri = '/data/noofusers/'+get_current_token();	
	x = init_ajax_object();	
	x.open('GET', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Connection", "close");
	x.send();
	return parseInt(x.responseText);
}

function getOptinCounts() 
{
	var i, x, n, result;
	var uri = '/data/count_optins/'+get_current_token();	
	x = init_ajax_object();	
	x.open('GET', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Connection", "close");
	x.send();
	response = x.responseText;
	if (response != '')
	{
		result = eval('(' + response + ')');
	}
	
	return result;
}

function logout() 
{
	var i, x, n;
	var uri = '/logout/index/';	
	x = init_ajax_object();	
	x.open('GET', uri, true);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Connection", "close");
	x.onreadystatechange = function() 
	{
		if (x.readyState != 4) {return;}
		if (x.responseText == 'OK')
		{
			// cool
		}
	};
	x.send();
	delete x;
}  

function get_leaderboards_data(set)
{
	if (typeof set == 'undefined')
	{
		set = 0;
	}
	else
	{
		set--;
	}

	return (typeof leaderboards == 'object') ? leaderboards[set] : '';
}

function getUserData()
{
	var result = [];
	var i, x, n, response;
	var uri = '/get_user_extra_data/index/'+get_current_token();
	x = init_ajax_object();	
	x.open('GET', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Connection", "close");
	x.send();
	response = x.responseText;
	if (response != '')
	{
		result = eval('(' + response + ')');
	}
	
	return result;
}

function getServerTime()
{
	var i, x, n, response, result;
	var uri = '/time/index/';	
	x = init_ajax_object();	
	x.open('GET', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Connection", "close");
	x.send();
	response = x.responseText;
	if (response != '')
	{
		return response;
	}
	
	return '';
}

function isEntryComplete(field)
{
	var i, x, n, response, result;
	var uri = '/is_entry_complete/index/';	
	x = init_ajax_object();	
	var parameters = 'promotion_token='+get_current_token()+'&field='+field;
	x = init_ajax_object();	
	x.open('POST', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Content-length", parameters.length);
	x.setRequestHeader("Connection", "close");
	x.send(parameters);
	response = x.responseText;
	if (response != '')
	{
		result = eval('(' + response + ')');
		return result.result;
	}
	
	return '';
}

function getOptinUserData(date_from, date_to, token, scope) 
{
	if (typeof token == 'undefined' || token == '')
	{
		token = get_current_token();
	}

	if (typeof scope == 'undefined' || scope == '')
	{
		scope = 0;
	}
	
	var i, x, n, response, result;
	var uri = '/data/get_optin_user_data/';
	x = init_ajax_object();	
	var parameters = 'promotion_token='+token+'&scope='+scope+'&date_from='+date_from+'&date_to='+date_to;
	x = init_ajax_object();	
	x.open('POST', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Content-length", parameters.length);
	x.setRequestHeader("Connection", "close");
	x.send(parameters);
	response = x.responseText;
	if (response != '')
	{
		result = eval('(' + response + ')');
		return result;
	}
}

function getOptinUserDataAuthorise(username, password, date_from, date_to, token) 
{
	if (typeof token == 'undefined' || token == '')
	{
		token = get_current_token();
	}

	var i, x, n, response, result;
	var uri = '/data/get_optin_user_data_authorise/';
	x = init_ajax_object();	
	var parameters = 'username='+username+'&password='+password+'&promotion_token='+token+'&date_from='+date_from+'&date_to='+date_to;
	x = init_ajax_object();	
	x.open('POST', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Content-length", parameters.length);
	x.setRequestHeader("Connection", "close");
	x.send(parameters);
	response = x.responseText;
	if (response != '')
	{
		result = eval('(' + response + ')');
		return result;
	}
}

function getAppData(data_set_token, params) 
{
	// alert(params.name);
	
	var i, x, n, response, result;
	var uri = '/data/get_app_data/';
	x = init_ajax_object();	
	var parameters = 'token='+data_set_token;
	x = init_ajax_object();	
	x.open('POST', uri, false);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.setRequestHeader("Content-length", parameters.length);
	x.setRequestHeader("Connection", "close");
	x.send(parameters);
	response = x.responseText;
	if (response != '')
	{
		result = eval('(' + response + ')');
		return result;
	}
}

function utcDate(year, month, day, hour, minute, second)
{
	// string passed
	if (year != '' && month == undefined && day == undefined)
	{
	    var regex_mysqldatetime = /^([0-9]{2,4})-([0-1][0-9])-([0-3][0-9]) (?:([0-2][0-9]):([0-5][0-9]):([0-5][0-9]))?$/;
		var regex_mysqldate = /^([0-9]{2,4})-([0-1][0-9])-([0-3][0-9])?$/;

		// if 2011-10-25 12:13:14
		if (year.match(regex_mysqldatetime))
		{
			var parts = year.replace(regex_mysqldatetime, "$1 $2 $3 $4 $5 $6").split(' ');
			return new Date(Date.UTC(parts[0], parts[1]-1, parts[2], parts[3], parts[4], parts[5]));
		}
		// if 2011-10-25
		else if (year.match(regex_mysqldate))
		{
			var parts = year.replace(regex_mysqldate, "$1 $2 $3 0 0 0").split(' ');
			return new Date(Date.UTC(parts[0], parts[1]-1, parts[2], parts[3], parts[4], parts[5]));
		}	
		// if other
		else
		{
			var localDate = new Date(year);
			return new Date(Date.UTC(localDate.getFullYear(), localDate.getMonth(), localDate.getDate(), localDate.getHours(), localDate.getMinutes(), localDate.getSeconds()));		
		}
	}
	
	// all elements passed
	else 
	{
		hour 	= (hour == undefined) 		? 0 : hour;
		minute 	= (minute == undefined) 	? 0 : minute;
		second 	= (second == undefined) 	? 0 : second;

		return new Date(Date.UTC(year, month, day, hour, minute, second));
	}
}

function utcTimestamp(year, month, day, hour, minute, second)
{
	return utcDate(year, month, day, hour, minute, second).getTime();
}

