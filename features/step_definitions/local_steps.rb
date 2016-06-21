When /^I get page contents$/ do
  expect(page).to 
end

Then /^I should see "([^"]*)"$/ do |body|
  expect(page).to have_text body
end
