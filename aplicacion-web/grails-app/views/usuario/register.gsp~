<html>
<head>
  <title>Registro de usuario</title>
  <meta name="layout" content="main" />
</head>
<body>
<g:form class="simpleform" url="[controller:'usuario',action:'register']">
  <fieldset>
    <legend>Registracion de usuario</legend>
    <p class="info">
      Completar los campos para crear una cuenta!
    </p>
    <g:hasErrors bean="${usuario}">
      <div class="errors">
        <g:renderErrors bean="${usuario}"/>
      </div>
    </g:hasErrors>
    <p>
      <label for="username">Correo</label>
      <g:textField name="correo" value="${usuario?.correo}"
        class="${hasErrors(bean:usuario,field:'correo','errors')}"/>
    </p>
    <p>
      <label for="password">Password</label>
      <g:passwordField name="password"
        class="${hasErrors(bean:usuario,field:'password','errors')}" />
    </p>
    <p>
      <label for="confirm">Confirm Password</label>
      <g:passwordField name="confirm"
        class="${hasErrors(bean:usuario,field:'password','errors')}" />
    </p>
    <p>
      <label for="firstName">Nombre</label>
      <g:textField name="nombre" value="${usuario?.nombre}"
        class="${hasErrors(bean:usuario,field:'nombre','errors')}" />
    </p>
    <p>
      <label for="lastName">Apellido Paterno</label>
      <g:textField name="apellidoPaterno" value="${usuario?.apellidoPaterno}"
        class="${hasErrors(bean:usuario,field:'apellidoPaterno','errors')}" />
    </p>

<p>
      <label for="lastName">Apellido Materno</label>
      <g:textField name="apellidoMaterno" value="${usuario?.apellidoMaterno}"
        class="${hasErrors(bean:usuario,field:'apellidoMaterno','errors')}" />
    </p>
    <p class="button">
      <label>&nbsp;</label>
      <g:submitButton class="button" name="submitButton" value="Crear Cuenta" />
    </p>
  </fieldset>
</g:form>
</body>
</html>
