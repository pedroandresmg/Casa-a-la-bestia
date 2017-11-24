Feature:		Como jugador
				Quiero poder reiniciar el juego cuando pierda
				Para volver a jugar y esta vez ganar


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
		And deberia mostrar "¡Has sido devorado por el Monstruo!"
		And presiono el boton "reiniciar juego"
		Then deberia mostrar "Caza al monstruo"
		And deberia mostrar "Estas en la caverna 20"
		And deberia mostrar "Numero de flechas 3"	
