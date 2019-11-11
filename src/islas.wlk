class Isla {
	const property aves = #{}
	
	method agregarAve(nuevaAve){
		aves.add(nuevaAve)
	}
	method avesDebiles(){
		return aves.map({ave => ave.fuerza() < 1000})
	}
	method fuerzaTotal(){
		return aves.sum({ave => ave.fuerza()})
	}
	method esRobusta(){
		return aves.all({ave => ave.fuerza() > 300})
	}
	method huboterremoto(){
		return aves.forEach({ave => ave.recibirDisgusto()})
	}
	method huboTormenta(){
		return self.avesDebiles().forEach({ave => ave.recibirDisgusto()})
	}
	
}

/*El mapa del juego incluye muchas islas. En cada isla hay aves.

Se pide modelar las islas, de forma de poder realizar lo que sigue:

    obtener las aves débiles de una isla, son aquellas cuya fuerza sea menor a 1000.
    obtener la fuerza total de una isla, que es la suma de la fuerza de cada una de sus aves.
    poder averiguar si una isla es robusta: la condición es que todas sus aves tenga una fuerza mayor a 300.
    indicar que hubo un terremoto: todas las aves deben recibir un disgusto.
    indicar que hubo una tormenta: todas las aves débiles deben recibir un disgusto.
 */