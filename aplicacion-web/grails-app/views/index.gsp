<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pagina Principal</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}


			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;

			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
				
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;

				}
			}


.css3button {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #123d54;
	padding: 10px 20px;
	background: -moz-linear-gradient(
		top,
		#afd9fa 0%,
		#588fad);
	background: -webkit-gradient(
		linear, left top, left bottom,
		from(#afd9fa),
		to(#588fad));
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #003366;
	-moz-box-shadow:
		0px 1px 3px rgba(000,000,000,0.5),
		inset 0px 0px 1px rgba(255,255,255,1);
	-webkit-box-shadow:
		0px 1px 3px rgba(000,000,000,0.5),
		inset 0px 0px 1px rgba(255,255,255,1);
	box-shadow:
		0px 1px 3px rgba(000,000,000,0.5),
		inset 0px 0px 1px rgba(255,255,255,1);
	text-shadow:
		0px -1px 0px rgba(000,000,000,0.7),
		0px 1px 0px rgba(255,255,255,0.3);
}

		</style>
	</head>
	<body>
		
<g:form controller="main" action="index">
  <g:submitButton name="buttom_login" value="Iniciar Sesión"  class="css3button"/>
</g:form>

		<div id="page-body" role="main">
			<h1>Página Principal</h1>
			<p>32 años de experiencia nos avalan y consolidan como una empresa líder en la enseñanza del idioma inglés.  En nuestras instalaciones encontrarás un ambiente agradable y con nuestro método de enseñanza descubrirás lo fácil que es aprender este idioma.



Contamos con diversos tipos de cursos y seguramente alguno se adecúa a tus necesidades :

-Intensivos 2 horas diarias
-Semi Intensivos
-Sabatinos 6 horas
-Cursos para maestros
-Conversación
-Preparación y aplicación del TOEFL
-Cursos para empresas</p>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
