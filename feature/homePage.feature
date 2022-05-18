Feature: Home Page
    As a web user,
    I want to see hello message on the home page 
    so that I feel welcome to the site.

Scenario: Hello Message
    Given user visits home page
    Then user should see hello message
    Then the reponse status should be 200     