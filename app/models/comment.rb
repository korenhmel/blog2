class Comment < ApplicationRecord
  belongs_to :article
  validates :body, length: { in: 2..4000 } 
end
