var messages = [],
        index = 0;
<?php		foreach ($arr as $row) { ?>
    		messages.push(["<?php echo $row['participant1']?>","<?php echo $row['participant2']?>","<?php echo $row['home']?>","<?php echo $row['draw']?>","<?php echo $row['away']?>","<?php echo  date('d/m/Y H:i:s', $row['date'])?>","<?php echo  $row['league'] ?>","<?php echo  $row['leagueid'] ?>","<?php echo  $row['country'] ?>"]);    		
<?php		}   ?>
var en =[];
var ucl =[];
var uel =[];
var es =[];
var it =[];
var fr =[];
var de =[];

var arrayLength = messages.length;
for (var i = 0; i < arrayLength; i++) {
    if(messages[i][8]=='England'){
    	en.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
    if(messages[i][8]=='Champions League'){
    	ucl.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
    if(messages[i][8]=='Europa League'){
    	uel.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
    if(messages[i][8]=='Spain'){
    	es.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
    if(messages[i][8]=='Italy'){
    	it.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
    if(messages[i][8]=='France'){
    	fr.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
    if(messages[i][8]=='Germany'){
    	de.push([messages[i][0],messages[i][1],messages[i][2],messages[i][3],messages[i][4],messages[i][5],messages[i][6],messages[i][7],messages[i][8]]);
    }
      
}

fr = $.grep(fr,function(n){ return(n) });
for (i = 0; i < fr.length; i++) { 
   console.log(fr[i][0] + ' ' + fr[i][1]+ ' ' + fr[i][2]+ ' ' + fr[i][3]);
}

var index_en = 0;

    	function cycle_en() {
    		
    		
        	$('#participant1-1-en').text(en[index_en][0]);
        	$('#participant2-1-en').text(en[index_en][1]);
        	$('#home-1-en').text(en[index_en][2]);
        	$('#draw-1-en').text(en[index_en][3]);
        	$('#away-1-en').text(en[index_en][4]);
        	$('#date-1-en').text(en[index_en][5]);
        	$('#league-1-en').text(en[index_en][6]);
			$('#leagueid-1-en').text(en[index_en][7]);
			$('#country-1-en').text(en[index_en][8]);
        	index_en++;
        	if (index_en === en.length) {
            	index_en = 0;
        	}
			
			$('#participant1-2-en').text(en[index_en][0]);
        	$('#participant2-2-en').text(en[index_en][1]);
        	$('#home-2-en').text(en[index_en][2]);
        	$('#draw-2-en').text(en[index_en][3]);
        	$('#away-2-en').text(en[index_en][4]);
        	$('#date-2-en').text(en[index_en][5]);
        	$('#league-2-en').text(en[index_en][6]);
			$('#leagueid-2-en').text(en[index_en][7]);
			$('#country-2-en').text(en[index_en][8]);
        	index_en++;
        	if (index_en === en.length) {
            	index_en = 0;
        	}
			
			$('#participant1-3-en').text(en[index_en][0]);
        	$('#participant2-3-en').text(en[index_en][1]);
        	$('#home-3-en').text(en[index_en][2]);
        	$('#draw-3-en').text(en[index_en][3]);
        	$('#away-3-en').text(en[index_en][4]);
        	$('#date-3-en').text(en[index_en][5]);
        	$('#league-3-en').text(en[index_en][6]);
			$('#leagueid-3-en').text(en[index_en][7]);
			$('#country-3-en').text(en[index_en][8]);
        	index_en++;
        	if (index_en === en.length) {
            	index_en = 0;
        	}
			
			$('#participant1-4-en').text(en[index_en][0]);
        	$('#participant2-4-en').text(en[index_en][1]);
        	$('#home-4-en').text(en[index_en][2]);
        	$('#draw-4-en').text(en[index_en][3]);
        	$('#away-4-en').text(en[index_en][4]);
        	$('#date-4-en').text(en[index_en][5]);
        	$('#league-4-en').text(en[index_en][6]);
			$('#leagueid-4-en').text(en[index_en][7]);
			$('#country-4-en').text(en[index_en][8]);
        	index_en++;
			
        	if (index_en === en.length) {
            	index_en = 0;
        	}
        	setTimeout(cycle_en, 5000);
    	}
    	cycle_en();
		
var index_ucl = 0;

    	function cycle_ucl() {
    		
    		
        	$('#participant1-1-ucl').text(ucl[index_ucl][0]);
        	$('#participant2-1-ucl').text(ucl[index_ucl][1]);
        	$('#home-1-ucl').text(ucl[index_ucl][2]);
        	$('#draw-1-ucl').text(ucl[index_ucl][3]);
        	$('#away-1-ucl').text(ucl[index_ucl][4]);
        	$('#date-1-ucl').text(ucl[index_ucl][5]);
        	$('#league-1-ucl').text(ucl[index_ucl][6]);
			$('#leagueid-1-ucl').text(ucl[index_ucl][7]);
			$('#country-1-ucl').text(ucl[index_ucl][8]);
        	index_ucl++;
        	if (index_ucl === ucl.length) {
            	index_ucl = 0;
        	}
			
			$('#participant1-2-ucl').text(ucl[index_ucl][0]);
        	$('#participant2-2-ucl').text(ucl[index_ucl][1]);
        	$('#home-2-ucl').text(ucl[index_ucl][2]);
        	$('#draw-2-ucl').text(ucl[index_ucl][3]);
        	$('#away-2-ucl').text(ucl[index_ucl][4]);
        	$('#date-2-ucl').text(ucl[index_ucl][5]);
        	$('#league-2-ucl').text(ucl[index_ucl][6]);
			$('#leagueid-2-ucl').text(ucl[index_ucl][7]);
			$('#country-2-ucl').text(ucl[index_ucl][8]);
        	index_ucl++;
        	if (index_ucl === ucl.length) {
            	index_ucl = 0;
        	}
			
			$('#participant1-3-ucl').text(ucl[index_ucl][0]);
        	$('#participant2-3-ucl').text(ucl[index_ucl][1]);
        	$('#home-3-ucl').text(ucl[index_ucl][2]);
        	$('#draw-3-ucl').text(ucl[index_ucl][3]);
        	$('#away-3-ucl').text(ucl[index_ucl][4]);
        	$('#date-3-ucl').text(ucl[index_ucl][5]);
        	$('#league-3-ucl').text(ucl[index_ucl][6]);
			$('#leagueid-3-ucl').text(ucl[index_ucl][7]);
			$('#country-3-ucl').text(ucl[index_ucl][8]);
        	index_ucl++;
        	if (index_ucl === ucl.length) {
            	index_ucl = 0;
        	}
			
			$('#participant1-4-ucl').text(ucl[index_ucl][0]);
        	$('#participant2-4-ucl').text(ucl[index_ucl][1]);
        	$('#home-4-ucl').text(ucl[index_ucl][2]);
        	$('#draw-4-ucl').text(ucl[index_ucl][3]);
        	$('#away-4-ucl').text(ucl[index_ucl][4]);
        	$('#date-4-ucl').text(ucl[index_ucl][5]);
        	$('#league-4-ucl').text(ucl[index_ucl][6]);
			$('#leagueid-4-ucl').text(ucl[index_ucl][7]);
			$('#country-4-ucl').text(ucl[index_ucl][8]);
        	index_ucl++;
			
        	if (index_ucl === ucl.length) {
            	index_ucl = 0;
        	}
        	setTimeout(cycle_ucl, 5000);
    	}
    	cycle_ucl();
		
var index_uel = 0;

    	function cycle_uel() {
    		
    		
        	$('#participant1-1-uel').text(uel[index_uel][0]);
        	$('#participant2-1-uel').text(uel[index_uel][1]);
        	$('#home-1-uel').text(uel[index_uel][2]);
        	$('#draw-1-uel').text(uel[index_uel][3]);
        	$('#away-1-uel').text(uel[index_uel][4]);
        	$('#date-1-uel').text(uel[index_uel][5]);
        	$('#league-1-uel').text(uel[index_uel][6]);
			$('#leagueid-1-uel').text(uel[index_uel][7]);
			$('#country-1-uel').text(uel[index_uel][8]);
        	index_uel++;
        	if (index_uel === uel.length) {
            	index_uel = 0;
        	}
			
			$('#participant1-2-uel').text(uel[index_uel][0]);
        	$('#participant2-2-uel').text(uel[index_uel][1]);
        	$('#home-2-uel').text(uel[index_uel][2]);
        	$('#draw-2-uel').text(uel[index_uel][3]);
        	$('#away-2-uel').text(uel[index_uel][4]);
        	$('#date-2-uel').text(uel[index_uel][5]);
        	$('#league-2-uel').text(uel[index_uel][6]);
			$('#leagueid-2-uel').text(uel[index_uel][7]);
			$('#country-2-uel').text(uel[index_uel][8]);
        	index_uel++;
        	if (index_uel === uel.length) {
            	index_uel = 0;
        	}
			
			$('#participant1-3-uel').text(uel[index_uel][0]);
        	$('#participant2-3-uel').text(uel[index_uel][1]);
        	$('#home-3-uel').text(uel[index_uel][2]);
        	$('#draw-3-uel').text(uel[index_uel][3]);
        	$('#away-3-uel').text(uel[index_uel][4]);
        	$('#date-3-uel').text(uel[index_uel][5]);
        	$('#league-3-uel').text(uel[index_uel][6]);
			$('#leagueid-3-uel').text(uel[index_uel][7]);
			$('#country-3-uel').text(uel[index_uel][8]);
        	index_uel++;
        	if (index_uel === uel.length) {
            	index_uel = 0;
        	}
			
			$('#participant1-4-uel').text(uel[index_uel][0]);
        	$('#participant2-4-uel').text(uel[index_uel][1]);
        	$('#home-4-uel').text(uel[index_uel][2]);
        	$('#draw-4-uel').text(uel[index_uel][3]);
        	$('#away-4-uel').text(uel[index_uel][4]);
        	$('#date-4-uel').text(uel[index_uel][5]);
        	$('#league-4-uel').text(uel[index_uel][6]);
			$('#leagueid-4-uel').text(uel[index_uel][7]);
			$('#country-4-uel').text(uel[index_uel][8]);
        	index_uel++;
			
        	if (index_uel === uel.length) {
            	index_uel = 0;
        	}
        	setTimeout(cycle_uel, 5000);
    	}
    	cycle_uel();
		
var index_es = 0;

    	function cycle_es() {
    		
    		
        	$('#participant1-1-es').text(es[index_es][0]);
        	$('#participant2-1-es').text(es[index_es][1]);
        	$('#home-1-es').text(es[index_es][2]);
        	$('#draw-1-es').text(es[index_es][3]);
        	$('#away-1-es').text(es[index_es][4]);
        	$('#date-1-es').text(es[index_es][5]);
        	$('#league-1-es').text(es[index_es][6]);
			$('#leagueid-1-es').text(es[index_es][7]);
			$('#country-1-es').text(es[index_es][8]);
        	index_es++;
        	if (index_es === es.length) {
            	index_es = 0;
        	}
			
			$('#participant1-2-es').text(es[index_es][0]);
        	$('#participant2-2-es').text(es[index_es][1]);
        	$('#home-2-es').text(es[index_es][2]);
        	$('#draw-2-es').text(es[index_es][3]);
        	$('#away-2-es').text(es[index_es][4]);
        	$('#date-2-es').text(es[index_es][5]);
        	$('#league-2-es').text(es[index_es][6]);
			$('#leagueid-2-es').text(es[index_es][7]);
			$('#country-2-es').text(es[index_es][8]);
        	index_es++;
        	if (index_es === es.length) {
            	index_es = 0;
        	}
			
			$('#participant1-3-es').text(es[index_es][0]);
        	$('#participant2-3-es').text(es[index_es][1]);
        	$('#home-3-es').text(es[index_es][2]);
        	$('#draw-3-es').text(es[index_es][3]);
        	$('#away-3-es').text(es[index_es][4]);
        	$('#date-3-es').text(es[index_es][5]);
        	$('#league-3-es').text(es[index_es][6]);
			$('#leagueid-3-es').text(es[index_es][7]);
			$('#country-3-es').text(es[index_es][8]);
        	index_es++;
        	if (index_es === es.length) {
            	index_es = 0;
        	}
			
			$('#participant1-4-es').text(es[index_es][0]);
        	$('#participant2-4-es').text(es[index_es][1]);
        	$('#home-4-es').text(es[index_es][2]);
        	$('#draw-4-es').text(es[index_es][3]);
        	$('#away-4-es').text(es[index_es][4]);
        	$('#date-4-es').text(es[index_es][5]);
        	$('#league-4-es').text(es[index_es][6]);
			$('#leagueid-4-es').text(es[index_es][7]);
			$('#country-4-es').text(es[index_es][8]);
        	index_es++;
			
        	if (index_es === es.length) {
            	index_es = 0;
        	}
        	setTimeout(cycle_es, 5000);
    	}
    	cycle_es();
		
var index_it = 0;

    	function cycle_it() {
    		
    		
        	$('#participant1-1-it').text(it[index_it][0]);
        	$('#participant2-1-it').text(it[index_it][1]);
        	$('#home-1-it').text(it[index_it][2]);
        	$('#draw-1-it').text(it[index_it][3]);
        	$('#away-1-it').text(it[index_it][4]);
        	$('#date-1-it').text(it[index_it][5]);
        	$('#league-1-it').text(it[index_it][6]);
			$('#leagueid-1-it').text(it[index_it][7]);
			$('#country-1-it').text(it[index_it][8]);
        	index_it++;
        	if (index_it === it.length) {
            	index_it = 0;
        	}
			
			$('#participant1-2-it').text(it[index_it][0]);
        	$('#participant2-2-it').text(it[index_it][1]);
        	$('#home-2-it').text(it[index_it][2]);
        	$('#draw-2-it').text(it[index_it][3]);
        	$('#away-2-it').text(it[index_it][4]);
        	$('#date-2-it').text(it[index_it][5]);
        	$('#league-2-it').text(it[index_it][6]);
			$('#leagueid-2-it').text(it[index_it][7]);
			$('#country-2-it').text(it[index_it][8]);
        	index_it++;
        	if (index_it === it.length) {
            	index_it = 0;
        	}
			
			$('#participant1-3-it').text(it[index_it][0]);
        	$('#participant2-3-it').text(it[index_it][1]);
        	$('#home-3-it').text(it[index_it][2]);
        	$('#draw-3-it').text(it[index_it][3]);
        	$('#away-3-it').text(it[index_it][4]);
        	$('#date-3-it').text(it[index_it][5]);
        	$('#league-3-it').text(it[index_it][6]);
			$('#leagueid-3-it').text(it[index_it][7]);
			$('#country-3-it').text(it[index_it][8]);
        	index_it++;
        	if (index_it === it.length) {
            	index_it = 0;
        	}
			
			$('#participant1-4-it').text(it[index_it][0]);
        	$('#participant2-4-it').text(it[index_it][1]);
        	$('#home-4-it').text(it[index_it][2]);
        	$('#draw-4-it').text(it[index_it][3]);
        	$('#away-4-it').text(it[index_it][4]);
        	$('#date-4-it').text(it[index_it][5]);
        	$('#league-4-it').text(it[index_it][6]);
			$('#leagueid-4-it').text(it[index_it][7]);
			$('#country-4-it').text(it[index_it][8]);
        	index_it++;
			
        	if (index_it === it.length) {
            	index_it = 0;
        	}
        	setTimeout(cycle_it, 5000);
    	}
    	cycle_it();

var index_fr = 0;

		function cycle_fr() {
    		
    		
        	$('#participant1-1-fr').text(fr[index_fr][0]);
        	$('#participant2-1-fr').text(fr[index_fr][1]);
        	$('#home-1-fr').text(fr[index_fr][2]);
        	$('#draw-1-fr').text(fr[index_fr][3]);
        	$('#away-1-fr').text(fr[index_fr][4]);
        	$('#date-1-fr').text(fr[index_fr][5]);
        	$('#league-1-fr').text(fr[index_fr][6]);
			$('#leagueid-1-fr').text(fr[index_fr][7]);
			$('#country-1-fr').text(fr[index_fr][8]);
        	index_fr++;
        	if (index_fr === fr.length) {
            	index_fr = 0;
        	}
			
			$('#participant1-2-fr').text(fr[index_fr][0]);
        	$('#participant2-2-fr').text(fr[index_fr][1]);
        	$('#home-2-fr').text(fr[index_fr][2]);
        	$('#draw-2-fr').text(fr[index_fr][3]);
        	$('#away-2-fr').text(fr[index_fr][4]);
        	$('#date-2-fr').text(fr[index_fr][5]);
        	$('#league-2-fr').text(fr[index_fr][6]);
			$('#leagueid-2-fr').text(fr[index_fr][7]);
			$('#country-2-fr').text(fr[index_fr][8]);
        	index_fr++;
			if (index_fr === fr.length) {
            	index_fr = 0;
        	}
			
			$('#participant1-3-fr').text(fr[index_fr][0]);
        	$('#participant2-3-fr').text(fr[index_fr][1]);
        	$('#home-3-fr').text(fr[index_fr][2]);
        	$('#draw-3-fr').text(fr[index_fr][3]);
        	$('#away-3-fr').text(fr[index_fr][4]);
        	$('#date-3-fr').text(fr[index_fr][5]);
        	$('#league-3-fr').text(fr[index_fr][6]);
			$('#leagueid-3-fr').text(fr[index_fr][7]);
			$('#country-3-fr').text(fr[index_fr][8]);
        	index_fr++;
			if (index_fr === fr.length) {
            	index_fr = 0;
        	}
			$('#participant1-4-fr').text(fr[index_fr][0]);
        	$('#participant2-4-fr').text(fr[index_fr][1]);
        	$('#home-4-fr').text(fr[index_fr][2]);
        	$('#draw-4-fr').text(fr[index_fr][3]);
        	$('#away-4-fr').text(fr[index_fr][4]);
        	$('#date-4-fr').text(fr[index_fr][5]);
        	$('#league-4-fr').text(fr[index_fr][6]);
			$('#leagueid-4-fr').text(fr[index_fr][7]);
			$('#country-4-fr').text(fr[index_fr][8]);
        	index_fr++;
			
        	if (index_fr === fr.length) {
            	index_fr = 0;
        	}
        	setTimeout(cycle_fr, 5000);
    	}
    	cycle_fr();
		
var index_de = 0;

    	function cycle_de() {
    		
    		
        	$('#participant1-1-de').text(de[index_de][0]);
        	$('#participant2-1-de').text(de[index_de][1]);
        	$('#home-1-de').text(de[index_de][2]);
        	$('#draw-1-de').text(de[index_de][3]);
        	$('#away-1-de').text(de[index_de][4]);
        	$('#date-1-de').text(de[index_de][5]);
        	$('#league-1-de').text(de[index_de][6]);
			$('#leagueid-1-de').text(de[index_de][7]);
			$('#country-1-de').text(de[index_de][8]);
        	index_de++;
        	if (index_de === de.length) {
            	index_de = 0;
        	}
			
			$('#participant1-2-de').text(de[index_de][0]);
        	$('#participant2-2-de').text(de[index_de][1]);
        	$('#home-2-de').text(de[index_de][2]);
        	$('#draw-2-de').text(de[index_de][3]);
        	$('#away-2-de').text(de[index_de][4]);
        	$('#date-2-de').text(de[index_de][5]);
        	$('#league-2-de').text(de[index_de][6]);
			$('#leagueid-2-de').text(de[index_de][7]);
			$('#country-2-de').text(de[index_de][8]);
        	index_de++;
        	if (index_de === de.length) {
            	index_de = 0;
        	}
			
			$('#participant1-3-de').text(de[index_de][0]);
        	$('#participant2-3-de').text(de[index_de][1]);
        	$('#home-3-de').text(de[index_de][2]);
        	$('#draw-3-de').text(de[index_de][3]);
        	$('#away-3-de').text(de[index_de][4]);
        	$('#date-3-de').text(de[index_de][5]);
        	$('#league-3-de').text(de[index_de][6]);
			$('#leagueid-3-de').text(de[index_de][7]);
			$('#country-3-de').text(de[index_de][8]);
        	index_de++;
        	if (index_de === de.length) {
            	index_de = 0;
        	}
			
			$('#participant1-4-de').text(de[index_de][0]);
        	$('#participant2-4-de').text(de[index_de][1]);
        	$('#home-4-de').text(de[index_de][2]);
        	$('#draw-4-de').text(de[index_de][3]);
        	$('#away-4-de').text(de[index_de][4]);
        	$('#date-4-de').text(de[index_de][5]);
        	$('#league-4-de').text(de[index_de][6]);
			$('#leagueid-4-de').text(de[index_de][7]);
			$('#country-4-de').text(de[index_de][8]);
        	index_de++;
			
        	if (index_de === de.length) {
            	index_de = 0;
        	}
        	setTimeout(cycle_de, 5000);
    	}
    	cycle_de();