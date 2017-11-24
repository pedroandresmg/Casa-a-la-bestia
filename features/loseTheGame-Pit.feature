Feature:		Como jugador
				Quiero que el juego termine cuando me caiga a un pozo
				Para que me notifiquen la razón por la cual perdí el juego

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaMover"
		And presiono el boton "oeste"
		And presiono el boton "oeste"
		And presiono el boton "oeste"
		Then deberia mostrar "¡Wooooooops! ¡Te caíste en un pozo!"