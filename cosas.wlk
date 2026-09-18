object knightRider {
    method peso() {
      return 500
    }
    method peligrosidad() {
      return 10
    }
}

object bumblebee {
  var transformado = false

  method peso() {
    return 800
  }

  method transformarBumblebee() {
    transformado = true
  }

  method volverAuto() {
    transformado = false
  }

  method peligrosidad() {
    return if(transformado) 30 else 15
  }
}

object paqueteDeLadrillos {
  var cantLadrillos = 0

  method agregarLadrillos(cant) {
    cantLadrillos += cant
  }

  method peso() {
    return cantLadrillos * 2
  }

  method peligrosidad() {
    return 2
  }
}

object arenaAGranel {
  var peso = 0

  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }

  method peso() {
    return peso
  }

  method peligrosidad() {
    return 1
  }
}

object bateriaAntiaerea {
  var tieneMiesiles = false

  method ponerMisiles() {
    tieneMiesiles = true
  }
  method sacarMisiles() {
    tieneMiesiles = false
  }
  method peso() {
    return if(tieneMiesiles) 300 else 200
  }
  method peligrosidad() {
    return if(tieneMiesiles) 100 else 0
  }
}

object contenedorPortuario {
  const contenido = []

  method agregarContenido(cosa) {
    contenido.add(cosa)
  }

  method pesoDelContenido() {
    return contenido.sum({c=>c.peso()})
  }

  method maximoDePeligrosidad() {
    return  contenido.max({c=>c.peligrosidad()})
  }

  method peso() {
    return self.pesoDelContenido() + 200
  }

  method peligrosidad() {
    return if(self.pesoDelContenido()>0)self.maximoDePeligrosidad().peligrosidad() else 0
  }
}

object residuosRadiactivos {
  var peso = 0
  
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  
  method peso() {
    return peso
  }

  method peligrosidad() {
    return 200
  }
}

object embalajeDeSeguridad {
    var objeto = bumblebee
  method emvolverObjeto(nuevoObjeto) {
    objeto = nuevoObjeto
  }
  
  method peso() {
    return objeto.peso()
  }

  method peligrosidad() {
    return objeto.peligrosidad() / 2
  }


}