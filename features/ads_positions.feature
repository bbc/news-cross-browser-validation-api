@ads @javascript
Feature: WS Adverts positions
	As a tester
 	I want to use the right ads debug url override
 	So that I can see the Ads are displayed in the right postions on page

Scenario: Ads on page
	Given I am on page url with ads debug override
	Then I can see the test Leaderboard ad displayed 
	And link to ads information 
	Then I can see MPU ad displayed
	And link to MPU ads information
	Then I can see Google ads sense displayed
	And ads are displayed in the right positions