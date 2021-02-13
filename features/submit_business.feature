Feature: Submit a business

  Scenario: Submitting a business
    When I visit the submit a local business page
    And I fill in the form
    And I search for the business
    Then I should see the business
