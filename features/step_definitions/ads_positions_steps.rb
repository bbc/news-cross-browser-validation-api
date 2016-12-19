Given(/^I am on page url with ads debug override$/) do
	page = visit "#{$URL}".to_s
	puts current_url
	Selenium::WebDriver::Wait.new(:timeout => 5)
end

Then (/^I can see the test Leaderboard ad displayed$/) do 
	expect(page).to have_css('#bbccom_leaderboard')
end

And (/link to ads information$/) do
	within('#bbccom_leaderboard') do
		expect(page).to have_css('.bbccom_text', :href)
	end
end
		
Then(/^I can see MPU ad displayed$/) do
  	expect(page).to have_css('#bbccom_mpu')
end

And(/^link to MPU ads information$/) do
  	within('#bbccom_mpu') do
  		expect(page).to have_css('.bbccom_text', :href)
  	end
end

Then(/^I can see Google ads sense displayed$/) do
  	expect(page).to have_css('#bbccom_adsense')
end

Then(/^ads are displayed in the right positions$/) do
  	page.save_screenshot("features/screenshots/page_ads_positions.png")
end
