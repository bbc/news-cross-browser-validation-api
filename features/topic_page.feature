Feature: Topic page tests

  Scenario: Polling
    Given I am on a topic page
    When 30 seconds passes
    Then I can see a polling request
    Then I can see the latest posts in the feed

  Scenario: Show more
    Given I am on a topic page
    When I click on show more updates
    Then 10 new posts are loaded

  Scenario: Back to top
    Given I am on a topic page
    When I click on the back to top link
    Then I am returned to the first post in the feed
