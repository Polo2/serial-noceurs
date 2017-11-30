class Wedding < ApplicationRecord
  belongs_to :user
  has_many :messages
  # has_many :registries
  has_attachment :photo
end
