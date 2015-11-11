require 'rails_helper'

describe "Static pages" do
  describe "Home page" do
    before { visit "/static_pages/home"}
    it "should have the h1 'Sample App'" do
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
      expect(page).to have_selector('title',
                                    :text => "Ruby on Rails Tutorial Sample App | Home",
                                    :visible => false)
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
                                    :text => "Ruby on Rails Tutorial Sample App | Help",
                                    :visible => false)
    end
  end

  describe "About page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About')
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_selector('title',
                                    :text => "Ruby on Rails Tutorial Sample App | About",
                                    :visible => false)
    end
  end

end