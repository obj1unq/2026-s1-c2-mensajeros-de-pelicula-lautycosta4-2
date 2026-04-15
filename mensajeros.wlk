/*Las personas mensajeras tienen características particulares:
   1. *Jean Gray*:Posee poderes telepáticos y telequinesicos, es decir que puede comunicarse con cualquier
    persona en cualquier momento (puede llamar siempre). Su peso es de 65 kg.
   2. *Neo*: Neo vuela, así que no pesa nada. Y anda con celular, el muy canchero. El tema es que a veces 
   no puede llamar porque se queda sin crédito.
   3. *Sara Connor*:  Tiene un peso propio que varía con el tiempo (es configurable). Viaja en moto ó 
   camión. A ese peso propio se le suma el peso de su vehículo. La moto pesa 100kg. En cambio, el camión
    pesa media tonelada. Si el camión tiene acoplados,hay que agregar media tonelada adicional por cada 
    uno de ellos. Sara no puede llamar a nadie.*/

object jean_gray{
    method peso(){ return 65 }
    method puedeLlamar(){ return true }

}

object neo{
    var tieneCredito=true

    method peso(){ return 0 }

    method siTieneCredito(){ tieneCredito=true }
    method noTieneCredito(){ tieneCredito=false }
    method puedeLlamar(){ 
        return tieneCredito
    }
}

object sara_connor{
    var pesoPropio=0
    var vehiculo= moto

    method pesoPropio(_peso){ pesoPropio=_peso }
    method cuantoPesa(){ return pesoPropio }

    method vehiculo(_vehiculo){ vehiculo=_vehiculo }
    method peso(){ return pesoPropio + vehiculo.peso() }


    method puedeLlamar(){ return false }
}

object moto {
  method peso(){ return 100 }
}
object camion {
    var acoplados=0
    method acoplados(_acoplados){ acoplados=_acoplados }
    method peso(){ return 500 + (acoplados * 500) }
}

