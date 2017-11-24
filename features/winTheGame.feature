Feature: 		Como jugador
				Quiero lanzar una flecha
				Para matar al monstruo y ganar el juego


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
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "oeste"
		Then deberia mostrar "¡Tú flecha impactó con el monstruo!"