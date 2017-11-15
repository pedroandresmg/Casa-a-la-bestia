Feature:    Como jugador
			Quiero indicar en un mensaje a qué número de caverna contigua quiero moverme
			Para moverme a dicha caverna
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el link "1.- Usar el Mapa Predeterminado"
		Then  deberia mostrar "Estas en la caverna 20"	


Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el link "1.- Usar el Mapa Predeterminado"
		When presiono el boton "Sur"
		Then  deberia mostrar "Estas en la caverna 28"	

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "1.- Jugar"
		And presiono el link "1.- Usar el Mapa Predeterminado"
		When presiono el boton "Oeste"
		Then  deberia mostrar "Estas en la caverna 19"	



