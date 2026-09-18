import cosas.*

object camion {
    const carga = []

    method cargarObjeto(cosa) {
      carga.add(cosa)
    }

    method sacarObjeto(cosa) {
      carga.remove(cosa)
    }

    method pesoDelCamion() {
      return 100 + carga.sum({c=>c.peso()})
    }

    method lasCosasTienenPesoPar() {
      return carga.all({c=>c.peso().even()})
    }

    method algunaCosaConPeso(peso) {
      return carga.any({c=>c.peso()==peso})
    }

    method primerCosaConPeligro(peligrosidad) {
      return carga.find({c=>c.peligrosidad() == peligrosidad})
    }

    method todasLasCosasConPeligrosidadMayor(peligrosidad) {
      return carga.filter({c=>c.peligrosidad()>peligrosidad})
    }

    method camionEstaExcedido() {
      return self.pesoDelCamion() > 2500
    }

    method camionPuedeCircular(peligrosidad) {
      return carga.all({c=>c.peligrosidad() <= peligrosidad}) && !self.camionEstaExcedido()
    }
}