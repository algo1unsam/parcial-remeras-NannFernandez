import remeras.*
import pedidos.*
import sucursales.*

object empresa {
	
	var pedidos = []
	var sucursales = []
	
	method hacer(pedido){
		pedidos.add(pedido)
	}
	
	method totalFacturado(){
		return sucursales.sum{sucursal => sucursal.facturado()}
	}
	
	method sucursalMayorFacturacion(){
		return sucursales.max{sucursal => sucursal.facturado()}
	}
	
	method totalPedidosDe(color){
		return pedidos.map{pedido=>pedido.color()}
	}
	
	method pedidoMasCaro(){
		return pedidos.max{pedido => pedido.precio()}
	}
	
	method quitar(pedido){ //no lo pide pero es una buena practica
		pedidos.remove(pedido)
	}
	
	method agregar(sucursal){
		sucursales.add(sucursal)
	}
	
	method sacarSucursal(sucursal){ //no lo pide pero es una buena practica
		sucursales.remove(sucursal)
	}
}
