require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  shared_examples_for "all static pages" do
    it { expect(page).to have_selector('h1', text: heading) }
    it { expect(page).to have_selector('title', text: full_title(page_title), visible: false) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_selector 'title', text: full_title('About Us'), visible: false
    click_link "Help"
    expect(page).to have_selector 'title', text: full_title('Help'), visible: false
    click_link "Contact"
    expect(page).to have_selector 'title', text: full_title('Contact'), visible: false
    click_link "Home"
    expect(page).to have_selector 'title', text: full_title(''), visible: false
    click_link "Sign up now!"
    expect(page).to have_selector 'title', text: full_title(''), visible: false
    # # click_link "sample app"
    # # page.should # fill in
  end


  describe "Home page" do
    before { visit root_path}
    let(:heading) { 'Sample App' }
    let(:page_title) { '' }
    it_should_behave_like "all static pages"
    it "should not have a custom page title" do
      expect(page).not_to have_selector('title', :text => '| Home', :visible => false)
    end
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading) { 'About' }
    let(:page_title) { 'About' }
    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
    it_should_behave_like "all static pages"
  end

end