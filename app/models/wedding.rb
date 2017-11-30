class Wedding < ApplicationRecord
  belongs_to :user
  has_many :messages
  # has_many :registries
  has_attachment :photo

  def passed?(wedding)
    @wedding = wedding
    if @wedding.date < Date.current
      return true
    else
      return false
    end
  end

  private

  def self.future()
    where('date > ?', Date.current)
  end

  def self.passed()
    where('date < ?', Date.current)
  end


end
