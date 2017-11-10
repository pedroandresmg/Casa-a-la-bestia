Given("visito la pagina de inicio") do
  visit '/'
end

Given ("visito la pagina de juego") do
	visit '/game'
end

Then("deberia mostrar {string}") do |string|
  last_response.body.should =~ /#{string}/m
end

Given("presiono el link {string}") do |string|
  click_link(string)
end

