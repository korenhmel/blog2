
require  "spec_helper.rb"

describe Contact do
 	it {should validate_presence_of (:email)} 
 	it {should validate_presence_of (:message)} 
	
end     