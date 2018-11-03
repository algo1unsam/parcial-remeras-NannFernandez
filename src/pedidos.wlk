import empresa.*
import remeras.*
import sucursales.*

class Pedido {
	
	var property cantidadDeRemeras
	var property tipoDeRemera
	
	method precio(){
		return (tipoDeRemera.costo()* cantidadDeRemeras) - tipoDeDeRemera.descuento()
	}
}
	
	
