require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

Capybara.default_driver = :selenium
Capybara.current_driver= :selenium_chrome

Capybara.app_host = "http://www.youtube.com"

describe "Searching for a video" do
  it "allows searches for general terms" do
    p 'trying to visit youtube'

    Capybara.drivers.each{|d| p d}

    visit "http://www.youtube.com"
    p 'trying to fill in query'
    fill_in('search_query', :with => "text adventures")
    click_button('search-btn')
    page.should have_content("GET LAMP: The Text Adventure Documentary")
  end
end