Feature: Welcome search bar

  Scenario: Searching for an eaterie
    Given an eaterie is in the database
    When I visit the home page
    And I search for the eaterie
    Then I should see the eaterie

  Scenario: Searching for a location
    Given an eaterie is in the database at the location
    When I visit the home page
    And I search for a location
    Then I should see the eaterie at the location

  Scenario: Searching for a restaurant
    Given multiple eateries are in the database
    When I visit the home page
    And I search for a location
    And I filter by restaurant
    Then I should see the restaurants at the location
