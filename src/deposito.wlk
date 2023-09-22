object antiguedad1 {
	var property estaEnMalEstado = true
	
	method aniosQueTiene(){
		return 101
	}
	
	method restaurar() = if(estaEnMalEstado){estaEnMalEstado = false}else{}
}

object antiguedad2 {
	var property estaEnMalEstado = false
	
	method aniosQueTiene(){
		return 50
	}
	
	method restaurar() = if(estaEnMalEstado){not estaEnMalEstado}else{}
}

