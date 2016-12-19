Feature: Loading a BBC News or World Service Homepage

  @Home_1
  Scenario: Loading Homepage

    Given I am on a Service Homepage
    Then I can select the first story
    When I have finished checking the stories and components the browser should close
