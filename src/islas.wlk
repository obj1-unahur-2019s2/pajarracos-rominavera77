import aves.*

class Isla {

	const property aves = []
	var property cantidadDeAlpiste = 10
	var property cantidadDeMaiz = 10

	method agregarAve(nuevaAve) {
		aves.add(nuevaAve)
	}

	method avesDebiles() {
		return aves.filter({ ave => ave.fuerza() < 1000 })
	}

	method fuerzaTotal() {
		return aves.sum({ ave => ave.fuerza() })
	}

	method esRobusta() {
		return aves.all({ ave => ave.fuerza() > 300 })
	}

	method huboterremoto() {
		return aves.forEach({ ave => ave.recibirDisgusto() })
	}

	method huboTormenta() {
		return self.avesDebiles().forEach({ ave => ave.recibirDisgusto() })
	}

	method aveCapitana() {
		return aves.max({ ave => ave.fuerza().between(1000, 3000) })
	}

	method estaEnPaz() {
		return aves.forEach({ ave => ave.estaConforme() })
	}

	method secionDeRelax() {
		return aves.forEach({ ave => ave.relajar() })
	}

	method alimentar() {
		return aves.forEach({ ave => ave.alimentarse() })
	}

}

