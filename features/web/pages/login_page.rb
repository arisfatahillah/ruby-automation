# encoding: utf-8

class LoginPage < SitePrism::Page
    set_url(ENV['BASE_URL'])
    
    element :phonenumber_field, :xpath, "//input[@placeholder='Nomor Telepon Anda']"
    element :password_field, :xpath, "//input[@placeholder='Kata Sandi Anda']"
    element :login_menu, :xpath, "//a[@href='https://evermos.com/login']"
    element :masuk_button, :xpath, '//*[contains(text(), "Masuk")]'
    element :tautan_toko, :xpath, '//*[contains(text(), "Salin Tautan Toko")]'
      
    def input_phonenumber(phone_number)
      wait_until_phonenumber_field_visible(wait: 5)
      phonenumber_field.set(phone_number)
    end
  
    def input_password(password)
      wait_until_password_field_visible(wait: 5)
      password_field.set(password)
    end
  
    def click_button_masuk
      wait_until_masuk_button_visible(wait: 5)
      masuk_button.click
    end
  
    def click_login_menu
      wait_until_login_menu_visible(wait: 5)
      within ".elementor-nav-menu" do
        click_link("Masuk", :match => :first)
      end
    end

    def click_tautan_toko
      wait_until_tautan_toko_visible(wait: 5)
      tautan_toko.click
    end
end