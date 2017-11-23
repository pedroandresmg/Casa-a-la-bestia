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

