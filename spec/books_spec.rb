require 'spec_helper'
require_relative '../book_app'

Capybara.app = BookApp

feature "Books" do

  scenario "user can add and see books" do
    visit "/"
    within("h3") do
      expect(page).to have_content("Books I've Lent Out")
    end
    click_on "Add a Title" # for link in index.erb
    fill_in "book", with: "The Hobbit" #name on form in 'new_title.erb' is 'book'
    click_on "Add Title" # for button in new_tite.erb
  end
end

# expect(page).to have_no_content("The Hobbit")
# fill_in "Book Title", with: "The Hobbit"
# expect(page).to have_content("The Hobbit")
#scenario "User can edit a book title on the homepage" do
#  visit "/"
#  fill_in "Book Title", with: "Lord of the Rings"
#  click_on "Add"
#  expect(page).to have_content("Lord of the Rings")
#  click_on "Edit Book Title"
#  fill_in "Book Title", with: "Lord of the Rings Trilogy"
#  click_on "Update Book Title"
#  expect(page).to have_content("Lord of the Rings Trilogy")
#end