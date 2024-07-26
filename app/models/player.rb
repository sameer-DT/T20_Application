class Player < ApplicationRecord
  belongs_to :team
  has_many :matches

  before_destroy :check_captain
  after_create :update_team_player_count
  after_destroy :update_team_player_count
  before_create :validate_captain

  scope :is_active, -> { where(is_active: true)}
  scope :by_role, ->(role) { where(role: role)}

  ROLES = ['allrounder','bowler', 'batsman'].freeze

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :position, presence: true
  validates :team, presence: true
  validates :role, inclusion: { in: ROLES },presence: true
  validates :description, length: { maximum: 500 }


  validates :is_captain, inclusion: { in: [true, false] }
  validates :is_active, inclusion: { in: [true, false] }

  def check_captain
    if is_captain?
      errors[:base]="Cannot delete captain"
      throw :abort
    end
  end

  def update_team_player_count
    team.update(player_count: team.players.count)
  end
  
  def validate_captain
    if team.players.where(is_captain: true).exists?
      errors[:base]="Team already has a captain"
      throw :abort
    end
  end
end
