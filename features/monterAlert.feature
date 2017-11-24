Feature: 		Como jugador
				Quiero saber cuando el monstruo esté en una caverna contigua al rededor de la mía
				Para escapar del monstruo y no perder el juego



Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la movilidad del monstruo en "monstruoOff" 
		And selecciono la jugada "jugadaMover" 
		And presiono el boton "sur"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "sur" 
		And selecciono la jugada "jugadaMover"
		And presiono el boton "sur"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "oeste"
		Then deberia mostrar "¡Olor extraño!,¡El monstruo está cerca!"