require "rails_helper"

RSpec.feature "User registration", :type => :feature do
  scenario "User fills registration form" do
    visit "/signup"
    fill_in "Name", :with => "Ebowe Blessing"
    fill_in "Email", :with => "bb@gmail.com"
    fill_in "Password", :with => "mama"
    fill_in "Confirm Password", :with => "mama"

    click_button "Sign Up"

    expect(page).to have_text("Welcome to Eagles Flight")
  end

  scenario "User logs in" do
    visit "/login"
    fill_in "Email", :with => "bb@gmail.com"
    fill_in "Password", :with => "mama"

    click_button "Log In"

    expect(page).to have_text("Log In Successful")
  end

  scenario "User logs out" do
    visit "/logout"
    click_button "Log Out"
    expect(page).content_for(:title) { "Home | Eagles Flight" }
  end
end