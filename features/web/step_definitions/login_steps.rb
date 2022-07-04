  Given(/^user go to login page/) do
    @browser = LoginPage.new
    @browser.load
  end
      
  When(/^client logged in as phone number "([^"]*)" and password "([^"]*)"$/) do |phone_number, password|
    @browser.input_phonenumber(phone_number)
    @browser.input_password(password)
    click_button('Masuk')
  end
    
  Then(/^user successfully login/) do
    sleep 1
    expect(page).to have_content('Akun')
  end
  
  And(/^user click "([^"]*)" on the page/) do |link_page|
    click_link(link_page)
    sleep 1
  end

  And(/^user visit url "([^"]*)" on the page/) do |link_page|
    visit(link_page)
    sleep 1
  end
  
  Then(/^validate shop url on new tab/) do
    sleep 5
    window = page.driver.browser.window_handles
    page.driver.browser.switch_to.window(window.last)
  
    expect(current_url).to eq('https://berikhtiar.com/huhuhuh.ce6')
  end

  And(/^validate user see text "([^"]*)" on the page/) do |text_view|
    sleep 1
    expect(page).to have_content(text_view)
  end

  When(/^user can click tautan toko/) do
    @browser.click_tautan_toko
    sleep 1
  end

  