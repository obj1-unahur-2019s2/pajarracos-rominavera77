import aves.*
import islas.*

class PalomaMontonera inherits Paloma {

	override method fuerza() = 2000.max(fuerza)
	

}

class PalomaManchada inherits Paloma {
	const property nidos = #{}
	
	override method recibirDisgusto(){
		super(); 
		self.construirNido()
	}
	method construirNido(){
		
		nidos.add(new Nido())
	}
	override method relajar(){
		if(nidos.asSet()>2)
			nidos.forEach({nido => nido.aumentarGrosor()})
		else {super()}
	}
	override method ira(){
		return nidos.sum({ nido => nido.potencia()})
	}
}

class Nido{
	var property grosor = 5
	var property resistenciaDelMaterial = 3
	
	method aumentarGrosor(){
		grosor += 1
	}
	method potencia() = (grosor * resistenciaDelMaterial) + 20
}

