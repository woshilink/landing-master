// <![CDATA[
    document.body.className=$.map(STATELY.get(),function(i,e) {if (/^(test|testmode)$/.test(e)==false) return e+'-'+i}).join(' ');
    console.log($.map(STATELY.get(),function(i,e) {if (/^(test|testmode)$/.test(e)==false) return e+'-'+i}).join(' ') );
// ]]>