When('I click on Eventos anteriores') do
  find(:xpath, '//*[@id="tribe-events-footer"]/nav/ul/li/a').click
  sleep(20)
end

Then('I should be able to see the course {string} in the events result') do |event|
  expect(page.has_content?(event)).to be_truthy
end
