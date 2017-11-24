Feature: 		Como jugador
				Quiero que el juego termine cuando me encuentre en la misma caverna que el monstruo
				Para que me notifiquen la razón por la cual perdí el juego


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