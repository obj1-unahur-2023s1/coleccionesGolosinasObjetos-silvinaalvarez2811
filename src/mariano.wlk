import golosinas.*

object mariano {
	const golosinas = []
	
	
	method golosinas(){return golosinas}
	method comprar(unaGolosina){golosinas.add(unaGolosina)}
	method desechar(unaGolosina){golosinas.remove(unaGolosina)}
	method cantidadDeGolosinas(){ return golosinas.size()}
	method tieneLaGolosina(unaGolosina){golosinas.contains(unaGolosina)}
	method probarGolosinas(){golosinas.forEach({dulce => dulce.mordisco()})}
	method hayGolosinaSinTACC(){return golosinas.any({dulce => dulce.libreGluten()})}
	method preciosCuidados(){
		return golosinas.all({dulce => dulce.precio()<=10})
	}
	method golosinaDeSabor(unSabor){
		return golosinas.find({dulce => dulce.sabor() == unSabor})
	}
	method golosinasDeSabor(unSabor){
		return golosinas.filter({dulce => dulce.sabor() == unSabor})
	}
	method sabores(){ 
		return (golosinas.asSet()).map({ dulce => dulce.sabor()})
	}
	method golosinaMasCara(){
		return (golosinas.max({dulce => dulce.precio()}))
	}
	method pesoGolosinas(){
		return golosinas.sum({dulce => dulce.peso()})
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(golosinas.asSet())
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.asSet().difference(self.sabores())
	}
	
}
