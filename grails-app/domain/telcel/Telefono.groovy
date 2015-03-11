package telcel

class Telefono {
	String marca
	String modelo
	String numeroSerie
	Date anioDeFabricacion
	BigDecimal precio
	int numeroDeLinea
	
    static constraints = {
    	marca(blank:false, size:5..50)
    	modelo(blank:false, size:5..50)
    	numeroSerie(blank:false, size:5..10)
    	numeroDeLinea(nullable:true)
    }
    
    String toString(){
  		return modelo
	} 
}
