Given("visito la pagina de inicio") do
  visit '/'
end

Given("presiono el link {string}") do |string|
  click_link(string)
end

When ("presiono el boton {string}") do |string|
  click_button(string)
end

Then("deberia mostrar {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end
