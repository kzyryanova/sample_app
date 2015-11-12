require 'rails_helper'

describe "User pages" do
  subject { page }
  describe "signup page" do
    before { visit signup_path }
    it { expect(page).to have_selector('h1',
                              text: 'Sign up') }
    it { expect(page).to have_selector('title', text: full_title('Sign up'), visible: false) }
  end
end