package escuela.aplicacion

class Usuario {

	 // time stamps: automatically populated by GORM

 
    // properties
    String nombre
    String apellidoPaterno
	String apellidoMaterno
    String numeroCuenta
    String password        // plain text, not stored
    String confirm         // plain text, not stored
    String passwordHashed
 
 
    // transients
    static transients = ['password', 'confirm']
 
    // constraints
    static constraints = {
        nombre blank:false;
        apellidoPaterno blank:false;
        apellidoMaterno blank:false;
        numeroCuenta  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
        }
    }
}
