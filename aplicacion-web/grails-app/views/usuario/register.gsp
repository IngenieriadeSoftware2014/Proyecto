<html>
<head>
  <title>Registro de usuario</title>
  <meta name="layout" content="main" />
  <!--link para la fuente que usaremos-->
  <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <!--Link para la biblioteca bootstrap-->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  
  <style>
      .texto{
        font-family: 'Open Sans';
        font-size: 12px;
      }
      
      .ph{
        font-family: 'Lato';
      }
  </style>
  
</head>
<body>
<g:form class="simpleform" url="[controller:'usuario',action:'register']">
  <fieldset>
    <legend class="texto">Registro de usuario</legend>
    <p class="texto">
      Completar los campos para crear una cuenta!
    </p>
    <g:hasErrors bean="${usuario}">
      <div class="errors">
        <g:renderErrors bean="${usuario}"/>
      </div>
    </g:hasErrors>
    <p class="texto">
      <label for="username">Correo</label>
      <g:textField name="correo" value="${usuario?.correo}" placeholder="Correo electrónico"
        class="${hasErrors(bean:usuario,field:'correo','errors')} texto"/>
    </p>
    <p class="texto">
      <label for="password">Contraseña</label>
      <g:passwordField name="password" placeholder="Contraseña"
        class="${hasErrors(bean:usuario,field:'password','errors')}" />
    </p>
    <p class="texto">
      <label for="confirm">Confirmar contraseña</label>
      <g:passwordField name="confirm" placeholder="Confirmar contraseña"
        class="${hasErrors(bean:usuario,field:'password','errors')}" />
    </p>
    <p class="texto">
      <label for="firstName">Nombre</label>
      <g:textField name="nombre" value="${usuario?.nombre}" placeholder="Nombre"
        class="${hasErrors(bean:usuario,field:'nombre','errors')}" />
    </p>
    <p class="texto">
      <label for="lastName">Apellido Paterno</label>
      <g:textField name="apellidoPaterno" value="${usuario?.apellidoPaterno}" placeholder="Apellido paterno"
        class="${hasErrors(bean:usuario,field:'apellidoPaterno','errors')}" />
    </p>

<p class="texto">
      <label for="lastName">Apellido Materno</label>
      <g:textField name="apellidoMaterno" value="${usuario?.apellidoMaterno}" placeholder="Apellido materno"
        class="${hasErrors(bean:usuario,field:'apellidoMaterno','errors')}" />
    </p>
    <p>
      <label>&nbsp;</label>
      <g:submitButton class="btn btn-primary" name="submitButton" value="Crear Cuenta" />
    </p>
  </fieldset>
</g:form>
</body>
</html>
