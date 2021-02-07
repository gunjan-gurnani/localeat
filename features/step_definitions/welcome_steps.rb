# frozen_string_literal: true

Given('a cafe is in the database') do
  FactoryBot.create :business, id: 1, name: 'Applaud'
  FactoryBot.create :location, business_id: 1
end

Given('a cafe is in the database at the location') do
  FactoryBot.create :business, id: 1
  FactoryBot.create :location, city: 'Ipswich', street_address: 'Ipswich street', business_id: 1
end

When('I visit the home page') do
  visit root_path
end

When('I search for the cafe') do
  fill_in 'q_name_or_location_city_cont', with: 'Applaud'
  click_button 'Search'
end

When('I search for a location') do
  fill_in 'q_name_or_location_city_cont', with: 'Ipswich'
  click_button 'Search'
end

Then('I should see the eateries at the location') do
  expect(page).to have_content(Business.last.name)
  expect(page).to have_content(Business.last.description)
  expect(page).to have_content(Business.last.business_type.capitalize)
  expect(page).to have_content('Ipswich')
  expect(page).to have_content(Business.last.location.street_address)
end

Then('I should see the cafe') do
  expect(page).to have_content(Business.last.name)
  expect(page).to have_content(Business.last.description)
  expect(page).to have_content(Business.last.business_type.capitalize)
  expect(page).to have_content(Business.last.location.street_address)
end
