import golosinas.*

object mariano {
	const golosinas = []
	const golosinasEliminadas =[]
	
	method golosinas(){return golosinas}
	method comprar(unaGolosina){golosinas.add(unaGolosina)}
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
		golosinasEliminadas.add(unaGolosina)
	}
	method cantidadDeGolosinas(){ return golosinas.size()}
	method tieneLaGolosina(unaGolosina){return golosinas.contains(unaGolosina)}
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
		return golosinas.map({ dulce => dulce.sabor()}).asSet()
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
/////desafio/////	
	
	method gastoEn(sabor){
		return golosinas.filter({dulce =>dulce.sabor()== sabor}).sum({dulce =>dulce.precio()})
	}
	
	method saborMasPopular(){
		return golosinas.max({ golosina => self.cuantasDeSabor(golosina.sabor() )}).sabor()
	}
	
	method cuantasDeSabor(unSabor){
		return golosinas.count({dulce => dulce.sabor() == unSabor })
	}
	method pesoDeUnSabor(unSabor){
		return golosinas.filter({g => g.sabor()==unSabor}).sum({g =>g.peso()})
	}
	method saborMasPesado(){
		return golosinas.max({g =>self.pesoDeUnSabor(g.sabor())}).sabor()
	}
	method comproYDesecho(golosina){return  golosinasEliminadas.contains(golosina)
	}
	
}