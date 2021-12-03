def get_xpath(element)
  case element
  when 'Lista'
    '//*[@id="tribe-bar-views-option-list"]'
  when 'Dia'
    '//*[@id="tribe-bar-views-option-day"]'
  when 'Semana'
    '//*[@id="tribe-bar-views-option-week"]'
  when 'Mes'
    '//*[@id="tribe-bar-views-option-month"]'
  else
    '//*[@id="tribe-bar-views-option-month"]'
  end
end

When('I select the date {string}') do |event_date|
  within(id: "tribe-bar-date") do
    fill_in with: event_date
  end
end


When('I select the option {string} of the filter option of events') do |display_type|
  page.find(:xpath, '//*[@id="tribe-bar-views-toggle"]').click
  page.find(:xpath, get_xpath(display_type)).click
  sleep(5)
end