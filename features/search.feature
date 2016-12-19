Feature: Performing a search on BBC News or World Service Website

  @Search_1
  Scenario: Searching on BBC Arabic

    Given I am on the BBC arabic Search page
    When I enter "test" within search bar
    Then I can see results

  @Search_2
  Scenario: Searching on World Service site

    Given I am on a World Service home page
    When I search for the term "world"
    Then I should see search results confirmation
    Then I can select a result on the page

  @BBCid
  Scenario: Check that user can login to BBC iD on WS or News Site

    Given I am on a News or WS home page
    When I click on Sign in
    Then I should be able to enter my BBCid username "anthony.kaluuma@bbc.co.uk"
    And I should be able to enter my BBCid password "BBCidtest"
    Then I can signin
