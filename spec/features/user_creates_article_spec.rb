require "rails_helper"

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path

    expect(page).to have_content 'New Article'
  end

  scenario "allows user to create new article" do
    visit new_article_path

    fill_in :article_title, :with => 'Some Title'
    fill_in :article_text, :with => 'Some Text!'

    click_button 'Save Article'

    expect(page).to have_content 'Some Title'
    expect(page).to have_content 'Some Text!'
    expect(page).to have_content 'Comments:'
  end
end