<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
		<div id="header">
		<style>

.menu{
list-style-type:none;
float:left;
padding-top:15px;
padding-bottom:15px;
padding-right:10px;
padding-left:10px;
background-color:#C4B4B1;
border-radius: 10px;
margin:auto;
width:98%;
border-width:5px;
}

.menu li{
position:relative;
float:left;
padding-left:10px;
padding-rigth:10px;
background-color:#8B4F4F;
padding-top:3px;
padding-bottom:5px;
border-radius: 10px;
margin:7px;
left: 0%;
margin-left: 0px;
width:150px;
height:25px;
line-height:25px;
}

.menu li a {
font-family:Tahoma;
font-size:13px;
color:#FFFFFF;
text-decoration:none;
}

.menu li ul {
position:absolute;
top::28px;
left:-20px;
display:none;
}

.menu li:hover ul, .menu lu ul li:hover ul, .menu li.over ul, .menu li ul li.over ul {
	display:block;
}

.menu li ul li {
border:1px solid #990000;
display:block;
width:150px;
height:25px;
line-height:25px;
}

</style>
</head>
	<body>
		<div class="menu">
		<g:javascript> 
		function mostrarSubMenu(id){
			if(document.getElementById(id).style.display=='none'){document.getElementById(id).style.display='block'}else{document.getElementById(id).style.display='none'};
		}
		</g:javascript>
			<li><a href="javascript:;" Onclick="mostrarSubMenu('aluno')">Aluno</a>
			<div>
				<ul id="aluno">
					<li><a href="/Sisfit/aluno/create">Novo</a></li>
					<li><a href="/Sisfit/aluno/index">Listar</a></li>
				</ul>
			</div>
			</li>
			<li><a  href="javascript:;" Onclick="mostrarSubMenu('modalidade')">Modalidade</a>
				<ul id="modalidade">
					<li><a href="/Sisfit/modalidade/create">Novo</a></li>
					<li><a href="/Sisfit/modalidade/index">Listar</a></li>
				</ul>
			</li>
			<li><a  href="javascript:;" Onclick="mostrarSubMenu('pagamento')">Pagamento</a>
				<ul id="pagamento">
					<li><a href="/Sisfit/pagamento/create">Novo</a></li>
					<li><a href="/Sisfit/pagamento/index">Listar</a></li>
				</ul>
			</li>
			<li><a  href="javascript:;" Onclick="mostrarSubMenu('professor')">Professor</a>
				<ul id="professor">
					<li><a href="/Sisfit/professor/create">Novo</a></li>
					<li><a href="/Sisfit/professor/index">Listar</a></li>
				</ul>
			</li>
			<li><a  href="javascript:;" Onclick="mostrarSubMenu('turma')">Turma</a>
				<ul id="turma">
					<li><a href="/Sisfit/turma/create">Novo</a></li>
					<li><a href="/Sisfit/turma/index">Listar</a></li>
				</ul>
			</li>
			<div id="loginHeader">
    <g:loginControl />
  </div>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
