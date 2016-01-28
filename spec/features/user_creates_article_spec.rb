require "spec_helper"

feature "Account Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New article'
  end
  scenario "allows user to create new article page" do
    visit new_article_path
    fill_in :article_title, :with => 'Test title'
    fill_in :article_text, :with => 'Test text'
    click_button 'Save Article'

    expect(page).to have_content 'Comments'
  end
end

