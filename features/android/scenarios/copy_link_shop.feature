@homepage
Feature: Evermos - Homepage
  
  Scenario: User can go to my shop landing page
    Given user in onboarding screen
    And user click button name "Saya Sudah Punya Akun"
    And validate text "Belum jadi reseller?" exist on page
    When user input phone number "6281223334444" on login page
    And user input password "password" on login page
    And user click button name "Masuk"
    And validate text "Yuk, ikuti panduan berjualan sebelum mulai berikhtiar." exist on page
    And user click button name "Nanti Saja"
    When user click text view "Akun Saya"
    Then user click button name "Lihat Toko Saya"
