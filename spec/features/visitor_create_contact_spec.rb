require "spec_helper"

feature "Contact Creation" do 
  scenario "allow access to contacts page" do
		visit '/contacts'

		expect(page).to have_content I18n.t 'contacts.contact_us'
	end	
  scenario "alows guest to create a contact" do
    visit '/contacts'
    fill_in :contact_email, with: 'user@axample.com'
    fill_in :contact_message, with: 'Hello my darling!!!'
    click_button 'Create'
    
    expect(page).to have_content 'The contact was successfuly created'

  end
end
