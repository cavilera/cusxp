require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "sign in page" do
    before { visit sign_in_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end

  describe "sign in" do
    before { visit sign_in_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_title('Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_title(user.name) }
      #it { should have_link('Profile', href: user_path(user)) }
      #it { should have_link('Sign out', href: sign_out_path) }
      #it { should_not have_link('Sign in', href: sign_in_path) }
    end
  end

end