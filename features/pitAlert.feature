Feature: 		Como jugador
				Quiero saber cuando un pozo esta en una caverna contigua al rededor de la mía
				Para escapar del pozo y no perder el juego

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaMover"
		And presiono el boton "oeste"
		And presiono el boton "oeste"
		Then deberia mostrar "¡Fuerte viento!,¡Un pozo está cerca!"