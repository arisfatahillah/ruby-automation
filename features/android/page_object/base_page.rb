=begin
Aris Nugraha - 2 juli 2022
=end
require 'dotenv'

class BasePage < Appium::Driver

  def initialize
    @home_logo = 'app_logo'
    @login_reseller_button = 'txtLoginReseller'
    @register_button = 'btnMulaiReseller'
    @input_phone_textfield = 'input_phone'
    @input_pass_textfield = 'input_pass'
    @login_button = 'btnLogin'
  end

  def is_home_page?
    wait_for {
      @driver.find_element(:id, @home_logo).displayed?
    }
  end

  def input_phone_number(phone_number)
    wait_for {
      @driver.find_element(:id, @input_phone_textfield).displayed?
    }
    find_element(:id, @input_phone_textfield).send_keys(phone_number)
    hide_keyboard
    sleep 1
  end

  def input_password(password)
    wait_for {
      @driver.find_element(:id, @input_pass_textfield).displayed?
    }
    find_element(:id, @input_pass_textfield).send_keys(password)
    hide_keyboard
    sleep 1
  end

end
