When('I select the option Cursos') do
  click_on "Cursos"
end

When('I select the option {string} of the course left filter') do |filter1|
  select(filter1, :from => "sfwd_prs-order-by")
  sleep(10)
end

When('I select the option {string} of the course middle filter') do |filter2|
  select(filter2, :from => "sfwd_cats-order-by")
  sleep(10)
end

When('I select the option {string} of the course right filter') do |filter3|
  select(filter3, :from => "sfwd_instructors-order-by")
  sleep(10)
end

Then('I should be able to see the course {string}') do |course|
  expect(page.has_content?(course)).to be_truthy
end

Then('I see an amount of courses of {int}') do |int|
  expect(find(:xpath, '//*[@id="courses-all"]/a/span').text).to eql int.to_s
end

Then('I should not be able to see the course {string}') do |course|
  expect(page.has_content?(course)).to be_falsey
end