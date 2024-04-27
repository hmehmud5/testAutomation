@requires_browser
Feature: Luma Test

  Scenario Outline: Login to luma site
    Given I am on the luma site
    When I click "Sign In" link on Home page
    And enter "<username>" in the email field
    And enter "<password>" in the password field
    And I click the "Sign In" button
    Then I should see the page with title "Home Page"

    Examples: 
      | username          | password |
      | autotest@test.com | Test@123 |
