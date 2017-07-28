require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

if ENV['PLATFORM'] == 'ios'
  caps = Appium.load_appium_txt file: File.expand_path('./../../../iosappium.txt', __FILE__), verbose: true
elsif ENV['PLATFORM'] == 'android'
  caps = Appium.load_appium_txt file: File.expand_path('./../../../AndroidAppium.txt', __FILE__), verbose: true
end

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
