import deposito.*

object casa {
	const antiguedades = [antiguedad1]
	
	method todoLoQueTiene(){
		return antiguedades.map({antiguedad => antiguedad})
	}
	
	method adquirirUnaAntiguedad(antiguedad){
		antiguedades.add(antiguedad)
	}
	
	method adquirirUnNuevoLote(lote){
		antiguedades.addAll(lote)
	}
	
	method tieneAlgunaAntiguedadEnStock(){
		return !self.todoLoQueTiene().isEmpty()
	}
	
	method cuantasAntiguedadesTiene(){
		return antiguedades.size()
	}
	
	method ultimaAntiguedadAdquirida(){
		return antiguedades.get(antiguedades.size() - 1)
	}
	
	method esMuyAntigua(antiguedad){
		return antiguedad.aniosQueTiene() > 100
	}
	
	method restaurarLaPrimerAntiguedad(){
		antiguedades.get(0).restaurar()
	}
	
	method restaurarLaUltimaDeLasAntiguedades(){
		self.ultimaAntiguedadAdquirida().restaurar()
	}
	
	method restaurarLaAntiguedadQueEstaEnLaPosicion(posicion){
		antiguedades.get(posicion).restaurar()
	}
	
	method restaurarLaAntiguedad(antiguedad){
		antiguedad.restaurar()
	}
	
	method venderTodasLasAntiguedades(){
		antiguedades.removeAll(antiguedades)
	}
}
