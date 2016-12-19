# ----------------------------------------------- >> Step Definitions << -------------------------------------------------------------------------------

# Arabic Search @Search_1


Given(/^I am on the BBC arabic Search page$/) do
    visit "#{$ARABIC_SEARCH}".to_s
    puts current_url
end

When(/^I enter "(.+?)" within search bar$/) do |search_term|
    find("div#page.ws-search-page").fill_in("q", :with => search_term)
    find(".ws-search-form__submit-button", visible: false).click
end

Then(/^I can see results$/) do
    find(".ws-search-page").text
end


# World Service Search @Search_2


Given(/^I am on a World Service home page$/) do
    visit "#{$URL}".to_s
    puts current_url
end

When(/^I search for the term "([^"]*)"$/) do |search_term|
    fill_in "orb-search-q", :with => search_term
    Selenium::WebDriver::Wait.new(:timeout => 10)
    page.save_screenshot("search_fillin.png")
    click_button "orb-search-button"
end

Then(/^I should see search results confirmation$/) do
    find("p.ws-search-results__message", visible: false).click
    Selenium::WebDriver::Wait.new(:timeout => 10)
    page.save_screenshot("search_results.png")
end

Then(/^I can select a result on the page$/) do
    find("div#orb-modules").click
    page.save_screenshot("select_search_result.png")
    Capybara.send(:session_pool).each { |name, ses| ses.driver.quit }
end



# Check that user can login to BBC iD @BBCid


Given(/^I am on a News or WS home page$/) do
    visit "#{$URL}".to_s
    puts current_url
    Selenium::WebDriver::Wait.new(:timeout => 10)
  def cookies_displayed
    cookies_displayed = driver.find_element(:id,"bbccookies").displayed?
    find("bbccookies-continue", visible: false).click if cookies_displayed
  end
    page.save_screenshot("features/screenshots/homepage_visit.png")
    Selenium::WebDriver::Wait.new(:timeout => 10)
end

When(/^I click on Sign in$/) do
    find("a#idcta-link", visible: false).click
    page.save_screenshot("features/screenshots/BBCid_signin.png")
end

Then(/^I should be able to enter my BBCid username "([^"]*)"$/) do |username|
    fill_in "bbcid_unique", :with =>  username
    page.save_screenshot("features/screenshots/username_enter.png")
    Selenium::WebDriver::Wait.new(:timeout => 1)
end

And(/^I should be able to enter my BBCid password "([^"]*)"$/) do |password|
    fill_in "bbcid_password", :with => password
    page.save_screenshot("features/screenshots/password_enter.png")
end

Then(/^I can signin$/) do
    find("input#bbcid_submit_button", visible: false).click
    page.save_screenshot("features/screenshots/submit_button.png")
    Capybara.send(:session_pool).each { |name, ses| ses.driver.quit }
end
