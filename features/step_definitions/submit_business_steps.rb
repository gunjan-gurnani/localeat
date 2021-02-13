# frozen_string_literal: true

When('I visit the submit a local business page') do
  visit new_business_path
end

When('I fill in the form') do
  fill_in 'business_name', with: 'Awesome Business'
  fill_in 'business_city', with: 'SomeCity'
  select 'Restaurant', from: 'business_business_type'
  click_button 'Submit'
end

When('I search for the business') do
  fill_in 'q_name_or_location_city_cont', with: 'Awesome Business'
  click_button 'Search'
end

Then('I should see the business') do
  expect(page).to have_content('Awesome Business')
  expect(page).to have_content('Restaurant')
end
