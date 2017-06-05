



body{
	background-color: black;
}
.container-fluid{
	width: 1000px;
}

nav{
	background-color: black;
	color: white;
}


a{
	text-decoration: none;
}
a:hover{
	text-decoration: none;

}
.navbar{
	margin-bottom: 0;
}
#logo{
	margin: 10px 0 ;
}
#logo img{
	width: 200px;
}
.logo button{
	margin-top: 12px;
}
.btn {
	background-color: #171717;
}
.main{

	background-position: bottom;
	background-repeat: no-repeat;
	background-size: cover;
    height: 600px;
}
.offer{
	margin-top: 100px;
    color: white;
    text-shadow: 0px 1px black;
    padding: 10px;
    border-radius: 10px;
}
.offer h1{

	color: rgba(250, 255, 50, 0.9);


    font-family:  Bebas Neue, sans-serif;
    text-shadow: 2px 2px 2px #000;
    margin: 0;
    font-size: 6em;
    line-height: 90px;
}
.offer h1 span{
	background-color: rgba(0, 0, 0, 0.28);
	border-radius: 12px;
	padding: 10px;
}
.offer h2{
	font-family:  Bebas Neue, sans-serif;
	margin: 0;
}
.offer h2 span{
	color:red;
}
/*************BUTTON******************/
.button{
	margin-top: 10px;

}
.button img{
	width: 250px;
}
.button a{
	list-style: none;
}
.button a:hover,.button a:focus{
	text-decoration: none;
	color: white;
}
.green{
	background-color: #4DA90B;
    border-bottom: 5px solid #496F2E;
	text-shadow: 0px -2px #669644;
}
.animate{
	transition: all 0.1s;
	-webkit-transition: all 0.1s;
}
.action-button{
	position: relative;
	padding: 20px 10%;
	border-radius: 10px;
	font-size: 25px;
	color: #FFF;
	text-decoration: none;
}
.action-button:active{
	transform: translate(0px,5px);
  -webkit-transform: translate(0px,5px);
	border-bottom: 1px solid;
}
.button >.CTA-button {
	display: inline-block;
	padding: 0.5em 1.2em;
    font-family: arial;
    font-weight: bold;
    font-size: 1.7em;
    margin-top: 0.5em;
    line-height: 2em;

    color: #000;
    text-shadow: 0px 2px 1px #84ea01;
    background: url("../images/bg-button.png") center center;
    background: -webkit-linear-gradient(#84ea01, #4f9700);
    background: -o-linear-gradient(#84ea01, #4f9700);
    background: -moz-linear-gradient(#84ea01, #4f9700);
    background: linear-gradient(#84ea01, #4f9700);
    border-radius: 5px;
    box-shadow: #000 2px 2px 4px;
}
.button >.CTA-button:hover {
    color: #000;
    background: -webkit-linear-gradient(#4f9700, #84ea01);
    background: -o-linear-gradient(#4f9700, #84ea01);
    background: -moz-linear-gradient(#4f9700, #84ea01);
    background: linear-gradient(#4f9700, #84ea01);
}
.steps{
	margin-top: 10px;
}
.step{

	background: rgba(76,76,76,1);
	background: -moz-linear-gradient(top, rgba(76,76,76,1) 0%, rgba(89,89,89,1) 26%, rgba(102,102,102,1) 46%, rgba(71,71,71,1) 56%, rgba(59,57,59,1) 66%, rgba(43,43,43,1) 76%, rgba(28,28,28,1) 91%, rgba(19,19,19,1) 100%);
	background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(76,76,76,1)), color-stop(26%, rgba(89,89,89,1)), color-stop(46%, rgba(102,102,102,1)), color-stop(56%, rgba(71,71,71,1)), color-stop(66%, rgba(59,57,59,1)), color-stop(76%, rgba(43,43,43,1)), color-stop(91%, rgba(28,28,28,1)), color-stop(100%, rgba(19,19,19,1)));
	background: -webkit-linear-gradient(top, rgba(76,76,76,1) 0%, rgba(89,89,89,1) 26%, rgba(102,102,102,1) 46%, rgba(71,71,71,1) 56%, rgba(59,57,59,1) 66%, rgba(43,43,43,1) 76%, rgba(28,28,28,1) 91%, rgba(19,19,19,1) 100%);
	background: -o-linear-gradient(top, rgba(76,76,76,1) 0%, rgba(89,89,89,1) 26%, rgba(102,102,102,1) 46%, rgba(71,71,71,1) 56%, rgba(59,57,59,1) 66%, rgba(43,43,43,1) 76%, rgba(28,28,28,1) 91%, rgba(19,19,19,1) 100%);
	background: -ms-linear-gradient(top, rgba(76,76,76,1) 0%, rgba(89,89,89,1) 26%, rgba(102,102,102,1) 46%, rgba(71,71,71,1) 56%, rgba(59,57,59,1) 66%, rgba(43,43,43,1) 76%, rgba(28,28,28,1) 91%, rgba(19,19,19,1) 100%);
	background: linear-gradient(to bottom, rgba(76,76,76,1) 0%, rgba(89,89,89,1) 26%, rgba(102,102,102,1) 46%, rgba(71,71,71,1) 56%, rgba(59,57,59,1) 66%, rgba(43,43,43,1) 76%, rgba(28,28,28,1) 91%, rgba(19,19,19,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4c4c4c', endColorstr='#131313', GradientType=0 );
    padding: 10px 0 5px 0;
    color: white;
    border-right: 5px solid black;
    margin-bottom: 10px;
}
.step h1{

	color: white;

    font-family:  Bebas Neue, sans-serif;
    text-shadow: 2px 2px 2px #000;
    margin: 0;
    font-size: 3em;
    line-height: 35px;
}
.step h2{

	color: #E4B11A;

    font-family:  Bebas Neue, sans-serif;
    text-shadow: 2px 2px 2px #000;
    margin: 0;
    font-size: 2.5em;
    line-height: 35px;
}
.step h4{

	color: #E4B11A;

    font-family:  Bebas Neue, sans-serif;
    text-shadow: 2px 2px 2px #000;
    margin: 0;

}

.step .step-num h1{
	color: red;
}
.num{
	border-bottom: 2px solid black;
}
.licence{
	margin-top: 20px;
}
.licence img {
	width: 140px;
}
.licence-logo-mobile{
	margin-top: 20px;
}

.licence-logo-mobile img{
	width: 150px;
}
.footer-text{
	font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif;
	font-size: 12px;
	color:#666666;
}


 /*==========  Non-Mobile First Method  ==========*/
/* SUPER Large Devices, Wide Screens */
@media only screen and (min-width : 1920px) {
	.main{
		background-size: 100% 100%;
	}

}
/* Large Devices, Wide Screens */
@media only screen and (max-width : 1200px) {
	.main{
		height: auto;

	}
	.offer{
		margin-top: 50px;
	}
	.offer h1{
		font-size: 5em;
		line-height: 60px;
	}
	.steps .container{
		width: 100%;
	}
	.steps .container .col-xs-12{
		padding: 0;
	}

}

/* Medium Devices, Desktops */
@media only screen and (max-width : 992px) {
	.container-fluid{
		width: 100%;
	}
	.offer h1{
		line-height: 55px;
	}

 }

 /* Small Devices, Tablets */
@media only screen and (max-width : 768px) {

	.offer{
		text-align: center;
	}
	.offer h1{
		line-height: 45px;
    	font-size: 3.5em;

	}
	.button{
		text-align: center;
	}
	.action-button{
		padding: 10px 10%;
	}

}

/* Extra Small Devices, Phones */
@media only screen and (max-width : 480px) {
	.main{
    	height: 255px;
    }

	.offer{
		margin-top: 10px;
		background-color: rgba(0, 0, 0, 0.4);
    	border-radius: 15px;
    	padding: 10px;
	}
	.offer h1{
		line-height: 35px;
		font-size: 2em;
	}
	.offer h2{
		font-size: 25px;
	}

	.button >.CTA-button {
		padding: 0.1em 0.5em;
		font-size: 1.5em;
	}


}

/* Custom, iPhone Retina */
@media only screen and (max-width : 320px) {

}

.arrow_box {
	position: relative;
	background: #88b7d5;
	border: 4px solid #c2e1f5;
}

.arrow_box:after, .arrow_box:before {
	left: 100%;
	top: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
}

.arrow_box:after {
	border-color: rgba(136, 183, 213, 0);
	border-left-color: #88b7d5;
	border-width: 88px;
	margin-top: -88px;
}

.arrow_box:before {
	border-color: rgba(194, 225, 245, 0);
	border-left-color: #c2e1f5;
	border-width: 94px;
	margin-top: -94px;
}
