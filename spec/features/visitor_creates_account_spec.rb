require "spec_helper"

# feature "Account Creation" do 
#   # before(:all) do
#   #   sign_up
#   # end
#   sign_up

#   scenario "allows guest to create Account" do
    
#     expect(page).to have_content I18n.t 'devise.registrations.signed_up'
#   end
# end

require "spec_helper"

feature "account creation"  do
    before(:each) do
    sign_up
  end

    scenario "allows guest to create Account" do
   expect(page).to have_content I18n.t 'devise.registrations.signed_up'
     end
end

