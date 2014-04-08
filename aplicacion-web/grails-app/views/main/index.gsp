<html>
<head>
  <title>Pagina principal</title>
  <meta name="layout" content="main" />
</head>
<body>
<g:if test="${session?.usuario}">
</g:if>
<g:else>
  <g:form class="simpleform" style="width:50%;" url="[controller:'user',action:'login']">
    <fieldset>
      <legend>Login</legend>
      <p class="info">
        Iniciar sesion <br />
        No tienes una cuenta?
        <g:link controller="usuario" action="register">Registrate!</g:link>
      </p>
      <g:if test="${flash.message}">
          <div class="message">${flash.message}</div>
      </g:if>
      <p>
        <label for="username">Correo</label>
        <g:textField name="correo" />
      </p>
      <p>
        <label for="password">Contraseña</label>
        <g:passwordField name="password" />
      </p>
      <p class="button">
        <label>&nbsp;</label>
        <g:submitButton class="button" name="submitButton" value="Login" />
      </p>
    </fieldset>
  </g:form>
</g:else>
</body>
</html>
