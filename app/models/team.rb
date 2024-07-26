class Team < ApplicationRecord
  has_many :players,dependent: :destroy
  has_many :matches,dependent: :destroy
  

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :founded, presence: true, numericality: { only_integer: true, greater_than: 1901 }
  validates :description, length: { maximum: 500 }

  scope :from_country, ->(country){
    where(country: country)
  }
  scope :founded_after, ->(year){
    where("founded > ?", year)
  }
end

