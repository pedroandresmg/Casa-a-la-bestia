Feature:    Como jugador
            Quiero lanzar una flecha 
            Para intentar matar al monstruo
 
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaFlecha"
		And presiono el boton "oeste" 
		And deberia mostrar "Numero de flechas 2"
 
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur" 
		Then deberia mostrar "Numero de flechas 2"

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur" 
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "oeste" 
		Then deberia mostrar "Numero de flechas 1"

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		When selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur"
        And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur"
        And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur"   
		Then deberia mostrar "Numero de flechas 0"

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

		