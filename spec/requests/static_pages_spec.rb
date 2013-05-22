require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('title', text: pageTitle) }
    it { should have_selector("h1", text: heading) }
  end
  
  it "should have the correct links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: 'Mickey About'
    click_link "Help"
    page.should have_selector 'title', text: 'Mickey Help'
    click_link "Contact"
    page.should have_selector 'title', text: 'Mickey Contact'
    click_link "Home"
    page.should have_selector 'title', text: 'Mickey Home'
  end
  
  describe "Home page" do
    before { visit root_path }
    
    let(:pageTitle){"Mickey Home"}
    let(:heading){"Sample App"}
    it_should_behave_like "all static pages"
  end
  
  describe "Help page" do
    before { visit help_path }
    
    let(:pageTitle){"Mickey Help"}
    let(:heading){"Help"}
    it_should_behave_like "all static pages"
  end
  
  describe "About page" do
    before { visit about_path }
    
    let(:pageTitle){"Mickey About"}
    let(:heading){"About"}
    it_should_behave_like "all static pages"
  end
  describe "Contact page" do
    before { visit contact_path }
    
    let(:pageTitle){"Mickey Contact"}
    let(:heading){"Contact"}
    it_should_behave_like "all static pages"
  end
end
