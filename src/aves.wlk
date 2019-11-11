class Ave {
	var property fuerza = 0
	
	method recibirDisgusto()
}

class Aguilucho inherits Ave{
	var property velocidad = 20
	
	method velocidad(nuevaVelocidad){ velocidad = nuevaVelocidad }
	override method fuerza(){
		if(velocidad <= 60){ return 180}
		else {return velocidad * 3}
	}
	override method recibirDisgusto(){ self.velocidad(velocidad * 2) }
}

class Albatro inherits Ave{
	var property peso = 4000
	var property masaMuscular = 600
	
	override method fuerza (){
		return
		if(peso < 6000){  masaMuscular}
		else { masaMuscular / 2 }
	}
	override method recibirDisgusto() = peso + 800
	// ir al gimnasio: el efecto es que la masa muscular y el peso aumentan en 500 gramos.
	method irAlGimnasio(){ masaMuscular = masaMuscular + 500 ; peso = peso + 500
	}
}

class Paloma inherits Ave{
	var property ira = 200
	
	override method fuerza() = ira * 2
	override method recibirDisgusto() = ira + 300
}

class AguiluchoColorado inherits Aguilucho{
	override method fuerza(){
		return super() + 400
	}
}

class PalomaTorcaza inherits Paloma{
	var property huevos = 3
	
	override method fuerza(){
		return super() + 100 * huevos 
	}
	override method recibirDisgusto(){
		return super() and huevos + 1
	}
}



