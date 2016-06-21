Feature: Google can search

Background:
  Given I am on https://www.google.com/ncr

Scenario: Search for a term
  When I fill in "q" found by "name" with "BrowserStack"
  And I submit
  Then I should see title "BrowserStack - Google Search"
