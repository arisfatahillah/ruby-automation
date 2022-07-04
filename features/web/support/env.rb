require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'capybara/poltergeist'
require 'dotenv'

# add support for API
require 'faker'
require "rspec/retry"
require "pry"
require "securerandom"
require "yaml"
require "dotenv"
require "httparty"
require "uri"
require "net/http"
require "nokogiri"
require "open-uri"
require "filesize"
require "fileutils"
require "logger"
require "uri"
require "net/ssh"
require 'logger'
require 'faraday'

Dotenv.load

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

Capybara.register_driver :selenium do |app|

  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        # 'args' => [ "--start-maximized", "headless"]
        'args' => [ "--start-maximized", "--disable-dev-shm-usage"],
      }
    )
  )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end

Capybara.default_max_wait_time = 10
Capybara.ignore_hidden_elements = false
