require 'spec_helper'

feature  "user signin", %q{
  In order to use this application
  As an user
  I want to be able to sign ip
} do

  background :each do
    @user = Fabricate(:user, login: "my login", password: "pw1")
  end

  scenario "with valid credentials" do
    visit signin_url

    fill_in "session_login", with: "my login"
    fill_in "session_password", with: "pw1"
    click_button "Signin"

    expect(page).to have_text("You have been successfully signin")
  end


end