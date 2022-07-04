  When(/^user click button name "([^"]*)"$/) do |button_name|
    click_widget_button(button_name)
    sleep 2
  end
    
  When(/^user click text view "([^"]*)"$/) do |text_name|
    click_text_view(text_name)
  end
    
  When(/^validate text "([^"]*)" exist on page$/) do |text_name|
    sleep 2
    validate_text(text_name)
  end
  
  And(/^user swipe to bottom of page "([^"]*)" pixel$/) do |pixel|
    Appium::TouchAction.new.swipe(start_x: 144, start_y: pixel, end_x: 144, end_y: 149).perform
  end
  
  Given("user in onboarding screen") do
    @basepage = BasePage.new
    @basepage.is_home_page?
  end
  
  And(/^user input phone number "([^"]*)" on login page$/) do |phone_number|
    @basepage.input_phone_number(phone_number)
  end
  
  And(/^user input password "([^"]*)" on login page$/) do |password|
    @basepage.input_password(password)
  end
  
  And(/^user validate text "([^"]*)" exist on webview$/) do |web_text|
    validate_content_page_webview(web_text)
  end
  