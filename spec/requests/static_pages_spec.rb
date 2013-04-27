require 'spec_helper'

describe "StaticPages" do
  subject { page }
  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('title', :text=>'Mickey Home') }
    it { should have_selector("h1", :text=>"Sample App") }
  end
  
  describe "Help page" do
    before { visit help_path }
    
    it { should have_selector("title", :text=>"Mickey Help") }
    it { should have_content('Help') }
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_selector("title", :text=>"Mickey About") }
    it {should have_content('About')}
  end
  describe "Contact page" do
    before { visit contact_path }
    
    it {should have_selector("title", :text=>"Mickey Contact") }
    it { should have_content("Mickey") }
  end
end
