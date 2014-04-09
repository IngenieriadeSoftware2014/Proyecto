<html>
<head>
  <title>Pagina principal</title>
  <meta name="layout" content="main" />
  <!--link para la fuente que usaremos-->
  <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <!--Link para la biblioteca bootstrap-->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  <style>
    .info{
        font-family: 'Lato';
        font-size: 15px;
    }
    
    .formulario{
        font-family: 'Open Sans';
        font-size: 13px;    
    }
  </style>
</head>
<body>
<g:if test="${session?.usuario}">
</g:if>
<g:else>
  <g:form class="simpleform" style="width:50%;" url="[controller:'user',action:'login']">
    <fieldset>
      <legend class="info">Iniciar Sesión</legend>
      <p class="info">        
        No tienes una cuenta?
        <g:link controller="usuario" action="register">Registrate!</g:link>
      </p>
      <g:if test="${flash.message}">
          <div class="message">${flash.message}</div>
      </g:if>
      <p class="formulario">
        <label for="username">Correo</label>
        <g:textField name="correo" placeholder="Email"/>
      </p>
      <p class="formulario">
        <label for="password">Contraseña</label>
        <g:passwordField name="password" placeholder="Contraseña"/>
      </p>
      <p class="button">
        <label>&nbsp;</label>
        <g:submitButton class="btn btn-primary" name="submitButton" value="Iniciar Sesión" />
      </p>
    </fieldset>
  </g:form>
</g:else>
</body>
</html>
