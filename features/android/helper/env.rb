require 'cucumber'
require 'rspec'
require 'pry'
require 'appium_lib'
require 'faker'
require 'cpf_faker'
require 'selenium-webdriver'

#change your device name
caps = Appium.load_appium_txt file: File.join(Dir.pwd, '/features/android/helper/capabilities.txt')
puts caps

def wait_for
  Selenium::WebDriver::Wait.new(:timeout => 30).until { yield }
end
    
def wait_for_element(time)
  Selenium::WebDriver::Wait.new(:timeout => time).until { yield }
end

@driver = Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { 
  $driver.start_driver
 }
After { $driver.driver_quit }
