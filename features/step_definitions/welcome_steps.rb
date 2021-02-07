# frozen_string_literal: true

Given('an eaterie is in the database') do
  FactoryBot.create :business, id: 1, name: 'Applaud'
  FactoryBot.create :location, business_id: 1
end

Given('an eaterie is in the database at the location') do
  FactoryBot.create :business, id: 1
  FactoryBot.create :location, city: 'Ipswich', street_address: 'Ipswich street', business_id: 1
end

Given('multiple eateries are in the database') do
  @businesses = FactoryBot.create_list(:business, 5)
  @businesses.each { |business| FactoryBot.create :location, business_id: business.id}
end

When('I visit the home page') do
  visit root_path
end

When('I search for the eaterie') do
  fill_in 'q_name_or_location_city_cont', with: 'Applaud'
  click_button 'Search'
end

When('I search for a location') do
  fill_in 'q_name_or_location_city_cont', with: 'Ipswich'
  click_button 'Search'
end

When('I filter by restaurant') do
  select 'Restaurant', from: 'Business Type'
end

Then('I should see the eaterie at the location') do
  expect(page).to have_content(Business.last.name)
  expect(page).to have_content(Business.last.description)
  expect(page).to have_content(Business.last.business_type.capitalize)
  expect(page).to have_content('Ipswich')
  expect(page).to have_content(Business.last.location.street_address)
end

Then('I should see the eaterie') do
  expect(page).to have_content(Business.last.name)
  expect(page).to have_content(Business.last.business_type.capitalize)
  expect(page).to have_content(Business.last.location.street_address)
end

Then('I should see the restaurants at the location') do
  pending # Write code here that turns the phrase above into concrete actions
end
