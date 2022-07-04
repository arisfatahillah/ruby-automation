@copy-url
Feature: Evermos

  Scenario: User can login to evermos web using valid credentials
    Given user go to login page
    When client logged in as phone number "081223334444" and password "password"
    And user successfully login
    And user visit url "https://evermos.com/my-store" on the page
    And validate user see text "Toko Saya" on the page
    Then user can click tautan toko