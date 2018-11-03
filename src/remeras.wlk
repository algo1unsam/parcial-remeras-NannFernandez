import empresa.*
import pedidos.*
import sucursales.*

class Lisa {
	
	var property talle
	var property color
	
	method costo(){
		if(talle < 40){
			return  80
		}
		else {
			return 100
		}
   }
   
   method tienedescuento(){
   	if(sucursal == flores){
    }
   	else{
   		throw new Exception("No tiene descuento")
   	}
   	
   	method descuento(){
   		
   	}
}

class Bordada inherits Lisa {
	
	var costoBordado
	var property cantidadDeColores
	
	override method costo(){
		return super() + costoBordado
	}
	
	method costoBordada(){
		return costoBordado == cantidadDeColores * 10
	} 
	
	override method descuento(){
		return false
	}

}

class Subliminada inherits Lisa {
	
	var property ancho
	var property largo
	const valorXcentimetro = 0.50
	
	override method costo(){
		return super() + self.costoSubliminado() + self.derechoAuto()
	}
	method superficie(){
		 return ancho * largo
	}
	method costoSubliminado(){
		return self.superficie() * valorXcentimetro
	}
	method derechoAutor(){
		return Autor.costo()
	}
	
	override method descuento(){
		return super()
	}
}

class Autor{
	
	var property nombre
	var property costo
}





