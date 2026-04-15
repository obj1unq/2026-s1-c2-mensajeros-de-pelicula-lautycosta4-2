/*La empresa utiliza un sistema desarrollado en objetos para 
identificar que persona llevará ese paquete. De todos los 
requerimientos que tiene el sistema, en este ejercicio sólo 
se pide resolver el siguiente: **Determinar si ese _paquete_ 
puede ser entregado por una _persona_ en un determinado 
_destino_**, teniendo en cuenta las siguientes reglas.*/

import mensajeros.*
import destinos.*


object paquete{
	var estaPago= true

	method paquetePago(){ estaPago=true }
	method paqueteNoPago(){ estaPago=false }

	method estaPago(){ return estaPago }
}

object entrega{
	var mensajero = jean_gray
	var destino = puenteBrooklyn
	const  paqueteAEntregar = paquete

	method mensajero(_mensajero){ mensajero=_mensajero }
	method destino(_destino){ destino=_destino }

	method puedeEntregar(){
		return paqueteAEntregar.estaPago() && 
		destino.puedePasar(mensajero)
	}
}