class Review < ApplicationRecord
  belongs_to :wedding
  belongs_to :user
  validates :content, length: { minimum: 20 }

end
