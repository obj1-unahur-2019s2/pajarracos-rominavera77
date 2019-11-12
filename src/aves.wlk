class Ave {

	var property fuerza = 0

	method recibirDisgusto()

	method relajar()

	method estaConforme(isla)

	method alimentarse(isla)

}

class Aguilucho inherits Ave {

	var property velocidad = 20

	method velocidad(nuevaVelocidad) {
		velocidad = nuevaVelocidad
	}

	override method fuerza() {
		return if (velocidad <= 60) {
			180
		} else {
			velocidad * 3
		}
	}

	override method recibirDisgusto() {
		velocidad = velocidad * 2
	}

	override method relajar() {
		velocidad -= 10
	}

	override method estaConforme(isla) {
		return isla.canidadDeAlpiste() >= 8
	}

	override method alimentarse(isla) {
		self.velocidad(self.velocidad() + 15)
		return isla.canidadDeAlpiste(isla.canidadDeAlpiste() - 3)
	}

}

class Albatro inherits Ave {

	var property peso = 4000
	var property masaMuscular = 600

	override method fuerza() {
		return if (peso < 6000) {
			masaMuscular
		} else {
			masaMuscular = masaMuscular / 2
		}
	}

	override method recibirDisgusto() {
		peso = peso + 800
	}

	method irAlGimnasio() {
		masaMuscular += 500
	; peso += 500
	}

	override method relajar() {
		peso -= 300
	}

	override method estaConforme(isla) {
		return isla.avesConMasFuerza().size() <= 2
	}

	method avesConMasFuerza(isla) {
		return isla.aves().filter({ ave => ave.fuerza() > self.fuerza() })
	}

	override method alimentarse(isla) {
		self.peso(self.peso() + 700)
		self.masaMuscular(self.masaMuscular() + 700)
		return isla.canidadDeMaiz(isla.canidadDeMaiz() - 4)
	}

}

class Paloma inherits Ave {

	var property ira = 200

	override method fuerza() = ira * 2

	override method recibirDisgusto() {
		ira += 300
	}

	override method relajar() {
		ira -= 50
	}

	override method estaConforme(isla) {
		return isla.avesDebiles() <= 1
	}

	override method alimentarse(isla) {
	}

	method equilibrarse() {
		if (self.fuerza() <= 700) {
			self.recibirDisgusto()
		} else {
			self.relajar()
		}
	}

}

class AguiluchoColorado inherits Aguilucho {

	override method fuerza() {
		return super() + 400
	}

}

class PalomaTorcaza inherits Paloma {

	var property huevos = 3

	override method fuerza() {
		return super() + 100 * huevos
	}

	override method recibirDisgusto() {
		super()
	; huevos = huevos + 1
	}

}

