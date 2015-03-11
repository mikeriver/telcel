package telcel

class Cliente {
	String nombre
	String apellidoPaterno
	String apellidoMaterno
	String sexo
	String email
	Date fechaNacimiento
	String calle
	int numero
	String localidad
	String ciudad
	String estado
	static hasMany = [telefonos:Telefono]
	
    static constraints = {
    	nombre(blank:false, size:5..50)
    	apellidoPaterno(blank:false, size:5..50)
    	apellidoMaterno(blank:false, size:5..50)
    	email(email:true, nullable: true)
    }
}
