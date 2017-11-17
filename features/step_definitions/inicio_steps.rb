Given("visito la pagina de inicio") do
  visit '/'
end

Given ("visito la pagina de juego") do
	visit '/gameCaverns'
end

Then("deberia mostrar {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Given("presiono el link {string}") do |string|
  click_link(string)
end

