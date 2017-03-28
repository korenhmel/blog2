require "spec_helper"

describe Comment do
	describe "association with article" do
 		it {should belong_to :article} 
 	end

 	describe "validation of length" do
 		it { should validate_length_of(:body).is_at_most(4000) }
 		it { should validate_length_of(:body).is_at_least(2) }
 	end
end 