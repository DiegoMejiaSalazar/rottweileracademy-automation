Given('I am in the course tab') do
  click_on "Cursos"
end

When('I select the course {string}') do |course|
  click_on(course, :match => :first)
end

Then('I should see the instructor {string}') do |instructor|
  expect(page.has_content?(instructor)).to be_truthy
end

Then('I see in the sections part {string}') do |sections|
  expect(page.has_content?(sections)).to be_truthy
end

Then('I see the price of {string}') do |price|
  expect(page.has_content?(price)).to be_truthy
end
