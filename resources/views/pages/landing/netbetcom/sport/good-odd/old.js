var messages = [],


index = 0;

messages.push(['{$arr[0].participant1}','{$arr[0].participant2}','{$arr[0].home}','{$arr[0].draw}','{$arr[0].away}','{$arr[0].date}','{$arr[0].league}']);
messages.push(['{$arr[1].participant1}','{$arr[1].participant2}','{$arr[1].home}','{$arr[1].draw}','{$arr[1].away}','{$arr[1].date}','{$arr[1].league}']);
messages.push(['{$arr[2].participant1}','{$arr[2].participant2}','{$arr[2].home}','{$arr[2].draw}','{$arr[2].away}','{$arr[2].date}','{$arr[2].league}']);
messages.push(['{$arr[3].participant1}','{$arr[3].participant2}','{$arr[3].home}','{$arr[3].draw}','{$arr[3].away}','{$arr[3].date}','{$arr[3].league}']);
messages.push(['{$arr[4].participant1}','{$arr[4].participant2}','{$arr[4].home}','{$arr[4].draw}','{$arr[4].away}','{$arr[4].date}','{$arr[4].league}']);
function cycle() {

$('#match1 #home-name ').text(messages[0][0]);
$('#match1 #away-name ').text(messages[0][1]);
$('#match1 .home h3').text(messages[0][2]);
$('#match1 .draw h3').text(messages[0][3]);
$('#match1 .away h3').text(messages[0][4]);
$('#match1 #time h2').text(messages[0][5]);
$('#match1 .odd-name h2').text(messages[0][6]);

$('#match2 #home-name ').text(messages[1][0]);
$('#match2 #away-name ').text(messages[1][1]);
$('#match2 .home h3').text(messages[1][2]);
$('#match2 .draw h3').text(messages[1][3]);
$('#match2 .away h3').text(messages[1][4]);
$('#match2 #time h2').text(messages[1][5]);
$('#match2 .odd-name h2').text(messages[1][6]);

$('#match3 #home-name ').text(messages[2][0]);
$('#match3 #away-name ').text(messages[2][1]);
$('#match3 .home h3').text(messages[2][2]);
$('#match3 .draw h3').text(messages[2][3]);
$('#match3 .away h3').text(messages[2][4]);
$('#match3 #time h2').text(messages[2][5]);
$('#match3 .odd-name h2').text(messages[2][6]);

$('#match4 #home-name ').text(messages[3][0]);
$('#match4 #away-name ').text(messages[3][1]);
$('#match4 .home h3').text(messages[3][2]);
$('#match4 .draw h3').text(messages[3][3]);
$('#match4 .away h3').text(messages[3][4]);
$('#match4 #time h2').text(messages[3][5]);
$('#match4 .odd-name h2').text(messages[3][6]);

$('#match5 #home-name ').text(messages[4][0]);
$('#match5 #away-name ').text(messages[4][1]);
$('#match5 .home h3').text(messages[4][2]);
$('#match5 .draw h3').text(messages[4][3]);
$('#match5 .away h3').text(messages[4][4]);
$('#match5 #time h2').text(messages[4][5]);
$('#match5 .odd-name h2').text(messages[4][6]);
index++;

if (index === messages.length) {
index = 0;
}

setTimeout(cycle, 1000);


}
cycle();