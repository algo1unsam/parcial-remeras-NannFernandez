import empresa.*
import remeras.*
import pedidos.*

class Sucursal {
	
	var nombre 
	var facturacion
	
	method facturado(){
		facturacion =+ pedido.precio()
	}
}

