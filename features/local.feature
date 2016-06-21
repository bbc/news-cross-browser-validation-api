Feature: Can check tunnel working

Background:
  Given I am on http://bs-local.com:45691/check

Scenario: Get body contents
  Then I should see "Up and running"
