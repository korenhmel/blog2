require "spec_helper"

feature "Article creation" do 
  before(:each)  do
    sign_up
  end
  
  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New Article'
  end

  scenario "user creates Article New" do
    create_article
    expect(page).to have_content 'comments'
  end

  scenario "user creates comments" do
     create_article
     fill_in :comment_body, with: 'Hello Gandurus!!!'
     click_button 'Create Comment'
     expect(page).to have_content 'author: polones message: Hello Gandurus!!!'
  end
end

def create_article
  visit new_article_path
  
    fill_in :article_title, with: 'Hello friend!!!!'
    fill_in :article_text, with: 'Glad to see you!!!'
    click_button 'Create'
  end