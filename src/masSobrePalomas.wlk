import aves.*
import islas.*

class PalomaMontonera inherits Paloma {

	override method fuerza() = 2

}

class PalomaManchada inherits Paloma {

}

/*
 * Además, agregar las siguientes variantes de paloma: la paloma montera y la paloma manchada.

 * Para cada paloma montera se define un tope de fuerza, que nace en 2000,
 *  pero puede variarse libremente. La fuerza de una paloma montera no puede superar el tope indicado.

 * De cada paloma manchada se conoce el conjunto de sus nidos, puede tener más de uno.
 *  A su vez, de cada nido se conoce el grosor y la resistencia del material;
 *  los valores iniciales son 5 y 3 respectivamente. Una paloma manchada nace sin ningún nido.
 * Cuando recibe un disgusto, además de lo que hacen todas las palomas, 
 * una paloma manchada construye un nuevo nido.
 * Cuando se relaja hace lo mismo que cualquier otra paloma, 
 * excepto si tiene más de 2 nidos, en cuyo caso aumenta el grosor de todos los que tenga en 1 unidad.
 * A la ira, sumarle la suma de la potencia de todos sus nidos. 
 * La potencia de un nido se obtiene multiplicando grosor por resistencia, y sumando 20 al resultado. 
 * P.ej. la potencia de un nido con 5 de grosor y 3 de resistencia es de 35. */
