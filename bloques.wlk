object pepita {
  var energia = 100

  method energia() = energia

  method volar(distancia) {
    self.validarVolar(distancia)
    energia = energia - self.energiaParaVolar(distancia)
  }

  method validarVolar(distancia) {
    if (energia < self.energiaParaVolar(distancia)) {
      self.error("No puedo volar esta distancia")
    }
  }

  method energiaParaVolar(distancia) {
    return 10 + distancia
  }

  method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()
  }
}

object alpiste {
  method energiaQueAporta() = 20
}

object miAsserter {

    method assertException(bloque) {

      try {
        bloque.apply() //ejecuto el bloque
        return false //no anda como espero
      }
      catch e: Exception {
        return true //anda como espero
      } 
      
    }
}

object roque {
  var rutina = {}
	var ave = pepita
	var cenas = 0
	
  method rutina(_rutina) {
    rutina = _rutina
  }

	method ave(_ave) {
		ave = _ave
		cenas = 0
	}

	method alimentar(alimento) {
		ave.comer(alimento)
		cenas += 1
	}

  method entrenar() {
    rutina.apply(ave)
  }
}