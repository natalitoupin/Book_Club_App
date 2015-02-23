require 'selenium-webdriver'

  def driver
    driver = Selenium::WebDriver.for :firefox
  end
  driver.navigate.to "http://google.com"

  def element
    element = driver.find_element(:name 'q')
  end
  element.send_keys "paperlesspost"
  element.submit