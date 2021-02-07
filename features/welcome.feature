Feature: Welcome search bar

  Scenario: Searching for a cafe
    Given a cafe is in the database
    When I search for the cafe
    Then I should see the cafe
