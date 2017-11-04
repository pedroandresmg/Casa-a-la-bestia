Given ("visito la pagina de juego") do
	visit '/game'
end

Given("presiono el boton {string}") do |string|
  click_button(string)
end

