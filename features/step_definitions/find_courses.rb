When('I type {string} in the field Buscar cursos') do |course|
  within(id: "bs_members_search") do
    fill_in with: course
  end
  find('#bs_members_search').native.send_keys(:return)
  sleep(10)
end
