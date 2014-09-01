
require "capybara/cucumber"

Capybara.default_driver = :selenium
Capybara.default_selector = :css
Capybara.app_host = "http://testphp.vulnweb.com/login.php"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.run_server = false

World(Capybara)