Feature: Live Event page tests

  Scenario: Polling
    Given I am on a live event page
    When 30 seconds passes
    Then I can see a polling request
    Then I can see the latest posts in the event feed

  Scenario: Sharing posts
    Given I am on a live event page
    When I select to share a post
    Then I am given the options of sharing on Twitter and Facebook
    And I am presented with a link to read more about these links

  Scenario: Embedded video
    Given I am on a live event page
    When I click the play button on a video asset
    Then it should playback

  Scenario: Embedded audio
    Given I am on a live event page
    When I click the play button on an audio asset
    Then it should playback

  Scenario: Show more
    Given I am on a live event page
    When I click on show more updates
    Then 20 new posts are loaded

  Scenario: Back to top
    Given I am on a live event page
    When I click on the back to top link
    Then I am returned to the first post in the feed