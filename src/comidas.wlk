import wollok.game.*
import randomizer.*
object manzana {
	const base= 5
	var madurez = 1
	var property position = game.at(0,0)

	method reposicionar() {
        position = randomizer.emptyPosition()
    }

	method image () ="manzana.png"

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
}
object alpiste {
	var property position = game.at(0,0)
	method reposicionar() {
        position = randomizer.emptyPosition()
    }
	method image() = "alpiste.png"
	method energiaQueOtorga() {
		return 20
	} 
}


