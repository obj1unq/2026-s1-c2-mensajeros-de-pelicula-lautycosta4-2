/*Cada destino le pone restricciones a las personas que quieren llegar a él. Existen dos destinos posibles:
    1. *Puente de Brooklyn*: deja pasar a todo lo que pese hasta una tonelada (1000 kilos).
    2. *La Matrix*: deja entrar a quien pueda hacer una llamada.*/

    object puenteBrooklyn{
        method puedePasar(mensajero){
            return mensajero.peso() <= 1000
        }
    }

    object laMatrix {
        method puedePasar(mensajero){
            return mensajero.puedeLlamar()
        }
    }