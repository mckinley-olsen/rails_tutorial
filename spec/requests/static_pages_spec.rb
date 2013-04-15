require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title 'Mickey Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text=>'Mickey Home')
    end
     
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector("h1", :text=>"Sample App")
    end
  end
  
  describe "Help page" do
    it "should have the title 'Mickey Help'" do
      visit '/static_pages/help'
      page.should have_selector("title", :text=>"Mickey Help")
    end
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  
  describe "About page" do
    it "should have the title 'Mickey About'" do
      visit '/static_pages/about'
      page.should have_selector("title", :text=>"Mickey About")
    end
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end
end
