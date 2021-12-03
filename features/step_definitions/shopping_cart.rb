def get_xpath_for_deleting(element)
  case element
  when 'Como hacer milkshakes'
    '//*[@id="post-29"]/div/div/form/table/tbody/tr[1]/td[1]/a'
  else
    '//*[@id="post-29"]/div/div/form/table/tbody/tr[1]/td[1]/a'
  end
end
When('I access the shopping cart icon') do
  page.find(:xpath, '//*[@id="header-aside"]/div/div[2]/a').click
  sleep(10)
end

When('I remove the element {string} of the shopping cart') do |course|
  page.find(:xpath, get_xpath_for_deleting(course)).click
  sleep(10)
end

Then('I should see a total amount to pay of {string}') do |amount|
  page.has_xpath?('//*[@id="post-29"]/div/div/div[2]/div/table/tbody/tr[2]/td/strong/span/bdi')
  expect(page.find(:xpath, '//*[@id="post-29"]/div/div/div[2]/div/table/tbody/tr[2]/td/strong/span/bdi').text).to eql amount
end
