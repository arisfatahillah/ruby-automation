@login
Feature: Evermos

  Scenario: User can login to evermos web using valid credentials
    Given user go to login page
    When client logged in as phone number "081223334444" and password "password"
    And user successfully login
    And user click "Akun" on the page
    When user click "Lihat Toko Saya" on the page
    Then validate shop url on new tab
