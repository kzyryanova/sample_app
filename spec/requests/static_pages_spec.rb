require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home page" do
    before { visit root_path}
    it "should have the h1 'Sample App'" do
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
    it "should have the base title" do
      expect(page).to have_selector('title',
                                :text => full_title(''),
                                :visible => false)
    end
    it "should not have a custom page title" do
      expect(page).not_to have_selector('title', :text => '| Home', :visible => false)
    end
  end

  describe "Help page" do
    before { visit help_path }
    it "should have the h1 'Help'" do
      expect(page).to have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      expect(page).to have_selector('title',
                                    :text => full_title(''),
                                    :visible => false)
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the h1 'About'" do
      expect(page).to have_selector('h1', :text => 'About')
    end
    it "should have the title 'About'" do
      expect(page).to have_selector('title',
                                    :text => full_title(''),
                                    :visible => false)
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have the h1 'Contact'" do
      expect(page).to have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'Contact'" do
      expect(page).to have_selector('title',
                                    :text => full_title(''),
                                    :visible => false)
    end
  end

end