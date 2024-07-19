class Player < ApplicationRecord
  belongs_to :team

  ROLES = ['Forward', 'Midfielder', 'Defender', 'Goalkeeper'].freeze

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :position, presence: true
  validates :team, presence: true
  validates :role, inclusion: { in: ROLES }
  validates :description, length: { maximum: 500 }


  validates :is_captain, inclusion: { in: [true, false] }
  validates :is_active, inclusion: { in: [true, false] }
end
