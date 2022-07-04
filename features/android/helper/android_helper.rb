  def validate_text(text_element)
    class_element = 'android.widget.TextView'
    wait_for {
      @driver.find_element(:xpath, "//*[contains(@class, '"+ class_element +"') and @text='"+ text_element +"']").displayed?
    }
  end
  
  def click_widget_button(button_name)
    button_element = 'android.widget.Button'
    wait_for {
      @driver.find_element(:xpath, "//*[contains(@class, '"+ button_element +"') and @text='"+ button_name +"']").displayed?
    }
    checkin_button = find_element(:xpath, "//*[contains(@class, '"+ button_element  +"') and @text='"+ button_name +"']").enabled?
    fail 'Button Disabled' unless checkin_button
    find_element(:xpath, "//*[contains(@class, '"+ button_element  +"') and @text='"+ button_name +"']").click
  end
  
  def click_allow_permission
    click_allow_permission_button = 'com.android.permissioncontroller:id/permission_allow_foreground_only_button'
    wait_for {
      @driver.find_element(:id, click_allow_permission_button).displayed?
    }
    find_element(:id, click_allow_permission_button).click
  end
  
  def click_text_view(text_name)
    text_name_element = 'android.widget.TextView'
    wait_for {
      @driver.find_element(:xpath, "//*[contains(@class, '"+ text_name_element +"') and @text='"+ text_name +"']").displayed?
    }
    checkin_button = find_element(:xpath, "//*[contains(@class, '"+ text_name_element  +"') and @text='"+ text_name +"']").enabled?
    fail 'Button Disabled' unless checkin_button
    find_element(:xpath, "//*[contains(@class, '"+ text_name_element  +"') and @text='"+ text_name +"']").click
  end

  def validate_content_page_webview(text_element)
    sleep 2
    #webview = available_contexts[1]
    #set_context(webview)
    webview = @driver.available_contexts[1]
    @driver.set_context(webview)
  
    wait_for {
      @driver.find_element(:xpath, "//*[contains(text(), '"+ text_element +"')]").displayed?
    }
  end
