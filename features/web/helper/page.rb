# frozen_string_literal: true

  def scroll_page(horizontal, vertical, obj = self)
    obj.page.execute_script "window.scrollBy(#{horizontal},#{vertical})"
  end
  
  def scroll_down(range, obj = self)
    scroll_page(0, range, obj)
  end
  
  def scroll_up(range, obj = self)
    scroll_page(0, -range, obj)
  end
  
  def scroll_right(range, obj = self)
    scroll_page(range, 0, obj)
  end
  
  def scroll_left(range, obj = self)
    scroll_page(-range, 0, obj)
  end
  
  def reload_page
    page.execute_script "window.location.reload(true)"
  end
  
  def go_back
    page.evaluate_script('window.history.back()')
  end
  
  def modal_accept_confirm
    page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
  end
  