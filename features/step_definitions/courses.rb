Given('I am in the Register form') do
  click_on "Registrarse"
end

When('I have put {string} as my new student account email') do |email|
  within(id: "signup_email") do
    fill_in with: email
  end
end

When('I have put {string} as my new student account password') do |password|
  within(id: "signup_password") do
    fill_in with: password
  end
  sleep(5)
end

When('I have put {string} for confirming my new student account password') do |password|
  within(id: "signup_password_confirm") do
    fill_in with: password
  end
  sleep(5)
end

When('I have put {string} as my new student account name') do |name|
  within(id: "field_1") do
    fill_in with: name
  end
end

When('I have put {string} as my new student account lastname') do |lastname|
  within(id: "field_2") do
    fill_in with: lastname
  end
end

When('I have put {string} as my student account username') do |username|
  within(id: "field_3") do
    fill_in with: username
  end
end

When('I select the option Crear una cuenta') do
  page.find(:xpath, '//*[@id="signup_submit"]').click
  sleep(20)
end

When('I am in my gmail page') do
  visit 'https://www.google.com/intl/es/gmail/about/#'
end

When('I select the option Inicia sesión') do
  click_on 'Inicia sesión'
end

When('I have put {string} as my email') do |email|
  within(id: 'identifierId') do
    fill_in with: email
  end
end

When('I select the option Siguiente of the gmail form') do
  click_on 'Siguiente'
end

When('I have put {string} as my password') do |pasword|
  page.has_xpath?('//*[@id="password"]/div[1]/div/div[1]/input')
  within(:xpath,  '//*[@id="password"]/div[1]/div/div[1]/input') do
    fill_in with: pasword
  end
end

# When('I select the email of Wordpress') do
#   page.has_xpath?('//*[@id=":49"]/div/div[2]/div')
#   page.has_xpath?('//*[@id=":26"]')
#   find(:xpath, '//*[@id=":26"]').click
# end
#
# When('I select the confirmation link') do
#   sleep(20)
#   a_link = page.all(:link, text: /https+\:+\/+www.r-acad.com+\/+activar+\/.+/).first
#   visit a_link.text
#   begin
#     accept_alert do
#       click_link 'Salir'
#     end
#   rescue => ElementNotFound
#     puts("Alert was not triggered")
#   end
#   page.has_css?('#activate-page')
# end

When('I select the option Activar') do
  page.has_xpath?('//*[@id="activation-form"]/p/input')
  page.find(:xpath, '//*[@id="activation-form"]/p/input').click
end

When('I select the option {string}') do |option|
  click_on option
end

When('I click on Entra en el sistema') do
  page.has_xpath?('//*[@id="activate-page"]/p[2]/a')
  page.find(:xpath, '//*[@id="activate-page"]/p[2]/a').click
end

When('I select the option Apuntarme') do
  page.find(:xpath, '//*[@id="btn-join"]').click
end


When('I selecct the option Marcar como completado') do
  page.find(:xpath, '//*[@id="learndash-page-content"]/div/div/div[2]/div[2]/div/form/input[4]').click
  sleep(10)
end

When('I click on {string} of the lessons') do |lesson|
  page.all("div", :text => lesson).last.click
end

Then('I should be in rottwerileracademy') do
  expect(page.has_content?('¡Tu cuenta ya está activa!')).to be_truthy
end

Then('I should see the option {string}') do |option|
  expect(page.has_content?(option)).to be_truthy
end

