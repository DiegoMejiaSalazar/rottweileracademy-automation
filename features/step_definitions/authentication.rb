Given('I have accessed to the rottweiler academy page') do
  expect(page.has_content?('Comunidad de aprendizaje Online')).to be_truthy
end

When('I select the option Iniciar Sesión') do
  click_on('Iniciar sesión')
end

Then('I should see a form of login') do
  expect(page.has_content?('Iniciar sesión')).to be_truthy
end

Given('I have put {string} in the field of direccion de correo electrónico') do |email|
  within(id: "user_login") do
    fill_in with: email
  end
end

Given('I have put {string} in the field of Contraseña') do |pass|
  within(id: "user_pass") do
    fill_in with: pass
  end
end

Then('I should be able to see the name {string}') do |name|
  expect(find(:xpath, '//*[@id="header-aside"]/div/div[1]/a/span').text).to eql name
end

Then('I should be able to see my profile photo') do
  expect(expect(page).to have_xpath('//*[@id="header-aside"]/div/div[1]/a/img')).to be_truthy
end

Then('I should be able to see an error message') do
  expect(find(:xpath, '//*[@id="login_error"]/strong[1]').text).to eql "Error"
end

Then('I should be able to see the email {string} in the error message') do |email|
  expect(find(:xpath, '//*[@id="login_error"]/strong[2]').text).to eql email
end

Then('I should be able to see a message with {string}') do |message|
  expect(find(:xpath, '//*[@id="login_error"]').text.include? message).to be_truthy
end

Then('The message {string} should be displayed in the activation form') do |message|
  url = URI.parse(current_url).to_s
  puts("-----------------------")
  puts(url)
  puts("-----------------------")
  expect(page.has_content?(message)).to be_truthy
end