require 'spec_helper'

feature  "user signup", %q{
  In order to use this application
  As an user
  I want to be able to sign up
} do

  scenario "creating a new user" do
    visit new_user_url

    fill_in "user_login", with: "my login"
    click_button "Create User"

    expect(page).to have_text("Account was successfully created.")
  end

end