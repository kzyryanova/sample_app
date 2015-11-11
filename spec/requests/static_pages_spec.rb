require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit "/static_pages/home"}
    it "should have the h1 'Sample App'" do
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
    it "should have the base title" do
      expect(page).to have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App",
                                :visible => false)
    end
    it "should not have a custom page title" do
      expect(page).not_to have_selector('title', :text => '| Home', :visible => false)
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector('title',
                                    :text => "#{base_title} | Help",
                                    :visible => false)
    end
  end

  describe "About page" do
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About')
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_selector('title',
                                    :text => "#{base_title} | About",
                                    :visible => false)
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('title',
                                    :text => "#{base_title} | Contact",
                                    :visible => false)
    end
  end

end