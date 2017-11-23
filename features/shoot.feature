Feature:    Como jugador
            Quiero lanzar una flecha 
            Para intentar matar al monstruo
 
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "oeste" 
		Then deberia mostrar "Numero de flechas 2"
 
Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur" 
		Then deberia mostrar "Numero de flechas 2"

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur" 
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "oeste" 
		Then deberia mostrar "Numero de flechas 1"

Scenario: 
		Given visito la pagina de inicio
		And presiono el link "Jugar"
		And presiono el boton "MapaPredeterminado"
		And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur"
        And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur"
        And selecciono la jugada "jugadaFlecha"
		And presiono el boton "sur"   
		Then deberia mostrar "Numero de flechas 0"