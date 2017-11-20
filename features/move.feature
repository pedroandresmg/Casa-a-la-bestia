Feature:    Como jugador
			Quiero indicar en un mensaje a qué número de caverna contigua quiero moverme
			Para moverme a dicha caverna
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		Then  deberia mostrar "Estas en la caverna 20"	

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "oeste" 
		And deberia mostrar "Estas en la caverna 19"
 
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "sur" 
		Then deberia mostrar "Estas en la caverna 28"
		
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaMover" 
		And presiono el boton "oeste"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "norte" 
		Then deberia mostrar "Estas en la caverna 11"
