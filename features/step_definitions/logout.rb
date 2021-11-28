When('I click on the name {string}') do |name|
  click_on(name)
end

When('I click on {string}') do |logout_option|
  click_on(logout_option)
end

Then('I should be able to see the rottweiler page') do
  expect(page.has_content?('Iniciar sesión')).to be_truthy
  expect(page.has_content?('Registrarse')).to be_truthy
end