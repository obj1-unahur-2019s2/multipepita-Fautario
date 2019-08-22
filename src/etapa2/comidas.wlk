
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20}
	// completar
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
	// completar
}

// despues, agregar mijo y canelones

object mijo {
	var energiaMijo = 0
	
	method mojarse() {
		energiaMijo = 15
	}
	method secarse() {
		energiaMijo = 20
	}
	method energiaPorGramo() { return energiaMijo }
}

object canelones {
	var energiaCanelones = 20
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerSalsa() {
		if (tieneSalsa) {
			energiaCanelones += 5
			tieneSalsa = true
		}
		else {
			"Ya tiene salsa"
		}
	}
	method sacarSalsa() {
		if (not tieneSalsa) {
			energiaCanelones -= 5
			tieneSalsa = false
		}
		else {
			"No tiene salsa para sacar"
		}
	}
	method ponerQueso() {
		if (tieneQueso) {
			energiaCanelones += 7
			tieneQueso = true
		}
		else {
			"Ya tiene queso"
		}
	}
	method sacarQueso() {
		if (not tieneQueso) {
			energiaCanelones -= 7
			tieneQueso = false
		}
		else {
			"No tiene queso para sacar"
		}
	}
	method energiaPorGramo() {
		return energiaCanelones
	}
}

object canelonesAlternativo {
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerSalsa() {tieneSalsa = true}
	method sacarSalsa() {tieneSalsa = false}
	method ponerQueso() {tieneQueso = true}
	method sacarQueso() {tieneQueso = false}
	
	method energiaPorGramo() {}
}