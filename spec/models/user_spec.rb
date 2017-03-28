require "spec_helper"

describe User do
	describe "associatons with articles" do
 		it {should have_many :articles} 
 	end
 end