import wollok.game.*
import pepita.*


object silvestre{
    var presa = pepita
    method image() = "silvestre.png" 
    method position () = game.at(self.persiguePresa(),0) 
    
    method persiguePresa(){
        const posDePresa = presa.x()
        return if (posDePresa >= 3) posDePresa else 3
    }

    method atrapar(){
        game.removeVisual(presa) 
    }
}

object nido {
  var position = game.at(9,9)
  method position() = position
  method image () = "nido.png"
}

