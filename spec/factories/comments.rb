FactoryGirl.define do
  factory :comment do
  	author "Georgiy"
  	# body  "Happy Hellowin text"  (create body comments one's)
  	# This create multiple comments
  	sequence(:body) {|n| "comment body #{n}"}
  end
end