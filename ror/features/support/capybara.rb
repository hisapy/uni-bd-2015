# # # Capybara and poltergeist
require "capybara/cucumber"
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  options = {
    :js_errors => true,
    :timeout => 180,
    :debug => false,
    :phantomjs_options => ['--load-images=yes', '--disk-cache=false']
    # :inspector => true
    # :phantom_logger => nil
  }
  Capybara::Poltergeist::Driver.new(app, options)
end
Capybara.default_wait_time = 5
