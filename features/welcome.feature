Feature: Welcome search bar

  Scenario: Searching for a cafe
    Given a cafe is in the database
    When I visit the home page
    And I search for the cafe
    Then I should see the cafe

  Scenario: Searching for a location
    Given a cafe is in the database at the location
    When I visit the home page
    And I search for a location
    Then I should see the eateries at the location
