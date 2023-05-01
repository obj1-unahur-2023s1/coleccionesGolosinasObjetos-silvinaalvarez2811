
object bombon {
	var peso = 15
	method precio(){return 5}
	method sabor(){return "frutilla"}
	method peso(){return peso}
	method libreGluten(){return true}
	method mordisco(){peso = (peso * 0.8) +1}
}

object alfajor {
	var peso = 300
	method precio(){return 12}
	method sabor(){return "chocolate"}
	method peso(){return peso}
	method libreGluten(){return false}
	method mordisco(){peso = (peso * 0.8)}
}
object caramelo {
	var peso = 5
	method precio(){return 1}
	method sabor(){return "frutilla"}
	method peso(){return peso}
	method libreGluten(){return true}
	method mordisco(){peso = (peso -1)}
}
object chupetin {
	var peso = 7
	method precio(){return 2 }
	method sabor(){return "naranja"}
	method peso(){return peso}
	method libreGluten(){return true}
	method mordisco(){
		if( peso >= 2){
			peso = peso * 0.9
		}else {}
	}
}
object oblea {
	var peso = 250
	method precio(){return 5}
	method sabor(){return "vainilla"}
	method peso(){return peso}
	method libreGluten(){return false}
	method mordisco(){
		if ( peso > 70){
			peso = peso * 0.5
		}else {
			peso = peso * 0.75
		}
	}
}
object chocolatin {
	var peso 
	var pesoInicial
	
	method precio(){return 0.5 * pesoInicial}
	method sabor(){return "chocolate"}
	method libreGluten(){return false}
	method mordisco(){peso = peso - 2} 
	method peso(){return peso}	
	method SetPesoInicial(unPeso){
		 pesoInicial = unPeso
		 peso = unPeso
	}
}
	
object golosinaBaniada {
	var pesoBanio = 4
	var golosinaBase
	
	method baniaA(unaGolosina) {golosinaBase = unaGolosina}
	method precio(){return golosinaBase.precio() + 2}
	method sabor(){return golosinaBase.sabor()}
	method libreGluten(){return golosinaBase.libreGluten()}
	method peso(){return golosinaBase.peso() + pesoBanio } 
	method mordisco(){
		golosinaBase.mordisco() 
		if ( pesoBanio > 0){ pesoBanio -= 2}
	}
}	 
object pastilla{
	var property peso = 5
	var property libreGluten 
	var saborActual
	
	method precio(){
		if( self.libreGluten()){
			return 7
		}else{
			return 10	
		}
	}
	method sabor(){ return saborActual}
	method mordisco(){
		if (self.sabor()== "frutilla"  ){
			saborActual =  "chocolate" 
		}else if (self.sabor()== "chocolate"){
			saborActual = "naranja" 
		}else {
			saborActual = "frutilla" 
		}
	}
}	
	










