
# ----------------------------------------------- >> Step Definitions << -------------------------------------------------------------------------------

Given(/^I am on a Service Homepage$/) do
  website_url = visit "#{$URL}"
  page.save_screenshot("home_page.png")
end

Then(/^I can select the first story$/) do
  click_first_story = find(".buzzard-item", visible: false).click
  #scroll_down_page =
  #return_back_to_homepage = visit page.driver.last_request.env["HTTP_REFERER"]

end







After do

  sleep 10

end
