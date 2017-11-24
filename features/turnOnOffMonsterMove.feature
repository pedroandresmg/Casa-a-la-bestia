Feature: 		Como jugador
				Quiero activar o desactivar el movimiento del monstruo
				Para cambiar la dificultad del juego y poder probarlo

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
		And selecciono la jugada "jugadaMover"
		And presiono el boton "oeste"
		And selecciono la jugada "jugadaMover"
		And presiono el boton "oeste"
		Then deberia mostrar "¡Has sido devorado por el Monstruo!"