package escuela.aplicacion

class Usuario {

    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String correo
    String password      
    String confirm         
    String passwordHashed

 
    static transients = ['password', 'confirm']
 

    static constraints = {
        nombre blank:false;
        apellidoPaterno blank:false;
 	apellidoMaterno blank:false;
        correo  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
        }
    }
}
