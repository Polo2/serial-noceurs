class Wedding < ApplicationRecord
  belongs_to :user
  # has_many :registries
  has_attachment :photo


  private

    def self.future()
    where('date > ?', Date.current)
  end

  def self.passed()
    where('date < ?', Date.current)
  end


end
