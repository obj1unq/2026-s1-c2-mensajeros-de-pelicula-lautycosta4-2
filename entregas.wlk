import mensajeros.*
import destinos.*


object paquete{
	var estaPago= true

	method paquetePago(){ estaPago=true }
	method paqueteNoPago(){ estaPago=false }

	method estaPago(){ return estaPago }
}

object entregar_paquete{
	var mensajero = jean_gray
	var destino = puenteBrooklyn

	method setMensajero(_mensajero){ mensajero=_mensajero }
	method setDestino(_destino){ destino=_destino }

	method entregar(){
		return paquete.estaPago() && destino.puedePasar(mensajero)
	}
}