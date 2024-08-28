import wollok.game.*

object pepita {
  var energia = 100
  var property position = game.at(0,0)

  method image(){
    return "pepita.png"
  }

  method energia() = energia

  method volar(distancia) {
    energia -= 10 + distancia
  }

  method mover(direccion){
    self.volar(1)
    direccion.move(self)
  }
}

object up{
  method move(positionable){
    positionable.position(game.at( positionable.position().x(), positionable.position().y()+1 ))
  }
}

object down{
  method move(positionable){
    positionable.position(game.at( positionable.position().x() - 1, positionable.position().y()-1 ))
  }
}

object left{
  method move(positionable){
    positionable.position(game.at( positionable.position().x() - 1, positionable.position().y() ))
  }
}

object right{
  method move(positionable){
    positionable.position(game.at( positionable.position().x() + 1, positionable.position().y() ))
  }
}