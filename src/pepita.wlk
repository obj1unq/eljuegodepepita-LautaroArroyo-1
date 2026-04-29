import wollok.game.*

object pepita {
	var energia = 100
	var x = 5
	var y = 5
	var imagen = "pepita.png"
	var estado = "viva"
	method position() = game.at (x,y)
	method energia() = energia
	method estado() = estado

	
	method text() = self.energia().toString()
	
	method estado(nuevoEstado){
		estado = nuevoEstado
	}

	method x (ejeX){
		x = ejeX
	}
	method x () = x
	
	method y (ejeY) {
		y = ejeY 
	}
	
	method image() = imagen

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - 9 - kms
		if (self.cansada()){
			self.morir()
		}
	}

	method cansada() = self.energia() <= 0

	method morir (){
		self.estado("muerta")
		imagen = "pepita-gris.png"
		console.println("Pepita murió")
		game.stop()
	}

	method moverArriba() {
        if (self.estado() == "viva" and y < game.height() - 1) {
            y += 1  
            self.volar(1)
        }
    }

	method moverAbajo() {
        if (self.estado() == "viva" and y > 0) { 
            y -= 1
            self.volar(1)
        }
    }
	
	method moverDerecha() {
        if (self.estado() == "viva" and x < game.width() - 1) {
            x += 1
            self.volar(1)
        } 
    }

	method moverIzquierda() {
        if (self.estado() == "viva" and x > 0) {
            x -= 1
            self.volar(1)
        }
    }
}

