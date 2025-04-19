
//personas


object rosa {
  
  method leGusta(objeto) {
    return objeto.peso()<=2000
  }

}

object estefania {
  
  method leGusta(objeto) {
    return objeto.color().esFuerte()
  }
}

object luisa {
  
  method leGusta(objeto) {
    return objeto.material().esBrillante()
  } 
}

object juan {
   
  method leGusta(objeto) {
    return not(objeto.color().esFuerte()) or (objeto.peso() >=1200 and objeto.peso() <=1800)
  }
}


//colores

object rojo {
  
  method esFuerte() =true 

}

object verde {
   
  method esFuerte() =true 

}

object celeste {
   
  method esFuerte() =false 

}

object pardo {
   
  method esFuerte() =false 

}

//materiales


object cobre {
  
  method esBrillante()=true

}

object vidrio {
  
  method esBrillante()=true

}

object lino {
   
  method esBrillante()=false

}

object madera {
   
  method esBrillante()=false

}

object cuero {
   
  method esBrillante()=false

}


//objetos


object remera {
  
  method material() =lino 
  method color()=rojo
  method peso() =800 

}

object pelota {
  
  method material() =cuero 
  method color()=pardo
  method peso() =1300

}

object biblioteca {
 
  method material() =madera 
  method color()=verde
  method peso() =8000 

}

object muñeco {
  
  var peso = 100 

  method material() =vidrio 
  method color()=celeste
  method peso() =peso 

}

object placa {
  
  var color = verde
  var peso = 5000  

  method material() =cobre 
  method color()=color
  method peso() =peso

}


object bolichito {
  var vidriera = pelota 
  var mostrador = muñeco

  method vidriera() = vidriera

  method mostrador() =mostrador

  method esBrillante() = self.vidriera().esBrillante() and self.mostrador().esBrillante()  

  method esMonocromatico() =  self.vidriera().color() == self.mostrador().color()

  method estaEquilibrado() =  self.vidriera().peso() <= self.mostrador().peso()

  method tenesDeColor(color) = (self.vidriera().color() == color) or (self.mostrador().color() == color)

  method podesMejorar() = self.esMonocromatico() or not(self.estaEquilibrado()) 

  method ofrecerleAlgoA(persona)= persona.leGusta(self.vidriera()) or persona.leGusta(self.mostrador())
}