package escuela.aplicacion

class UsuarioController {

   def scaffold = Usuario

    def register = {
        // new user posts his registration details
        if (request.method == 'POST') {
            
            def u = new Usuario(params)
		
           u.passwordHashed = u.password.encodeAsPassword()
            if (! u.save()) {
                // validation failed, render registration page again
                return [user:u]
            } else {
		u.save()
                // validate/save ok, store user in session, redirect to homepage
                session.usuario = u
                redirect(controller:'main')
            }
        } else if (session.usuario) {
            // don't allow registration while user is logged in
            redirect(controller:'main')
        }
    }
 
    def login = {
        if (request.method == 'POST') {
            def passwordHashed = params.password.encodeAsPassword()
            def u = User.findByNumeroCuenta(params.numeroCuenta)
	
            if (u) {
                // username and password match -> log in
                session.usuario = u
                redirect(controller:'main')
            } else {
                flash.message = "Usuario no esta en la base de datos"
                redirect(controller:'main')
            }
        } else if (session.usuario) {
            // don't allow login while user is logged in
            redirect(controller:'main')
        }
    }
 
    def logout = {
        session.invalidate()
        redirect(controller:'main')
    }
}
