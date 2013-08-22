require 'spec_helper'

feature  "add gadget", %q{
  In order manage my cool gadgets
  As an user
  I want to be able to add a gadget
} do

  background :each do
    @user = Fabricate(:user, login: "my login", password: "pw1")
  end

  scenario "add new gadget" do
    visit new_user_gadget_url(@user)

    fill_in "gadget_name", with: "my gadget"
    click_button "Create Gadget"

    expect(page).to have_text("Gadget was successfully created.")
  end

end