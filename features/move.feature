Feature:    Como jugador
			Quiero moverme por las cavernas
			Para encontrar al monstruo matarlo y ganar el juego
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		Then  deberia mostrar "Estas en la caverna 20"	

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaMover"
		And presiono el boton "oeste" 
		Then deberia mostrar "Estas en la caverna 19"
 
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaMover"
		And presiono el boton "sur" 
		Then deberia mostrar "Estas en la caverna 28"
		
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaMover" 
		And presiono el boton "oeste"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "norte" 
		Then deberia mostrar "Estas en la caverna 11"

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaMover" 
		And presiono el boton "oeste"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "este" 
		Then deberia mostrar "Estas en la caverna 20"




