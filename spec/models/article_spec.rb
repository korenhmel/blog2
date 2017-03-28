require "spec_helper"

describe Article do
	describe "validation of presense" do
		it {should validate_presence_of :title}
		it {should validate_presence_of :text}
	end

	describe "validation of length" do
		 it { should validate_length_of(:title).is_at_most(140) }
		 it { should validate_length_of(:title).is_at_least(2) }
		 it { should validate_length_of(:text).is_at_most(4000) }
		 it { should validate_length_of(:text).is_at_least(2) }
	end

	describe "associatons with comments" do
 		it {should have_many :comments} 
 	end

 	describe "association with user" do
 		it {should belong_to :user}
 	end

 	describe "#subject" do
 		it "returns the article title" do
		   # создаем обьект article хитрым способом
		   article = create(:article, title: 'lorem Ipsum')

		   # assert, проверка
		   expect(article.subject).to eq 'lorem Ipsum'
		end
     end	

    describe "#last_comment" do
    	it "returns the last comment" do
    		# Создаем статью, но в этот раз с комментариями
    		article = create(:article_with_comments)

    		#проверка
    		expect(article.last_comment.body).to eql "comment body 3"
    	end
    end
 		
end     
