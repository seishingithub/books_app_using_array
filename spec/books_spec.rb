require 'spec_helper'
require_relative '../book_app'

Capybara.app = BookApp

feature "Books" do

  scenario "user can add and see books" do
    visit "/"
    expect(page).to have_no_content("The Hobbit")
    fill_in "Book Title", with: "The Hobbit"
    click_on "Add"
    expect(page).to have_content("The Hobbit")
  end
end