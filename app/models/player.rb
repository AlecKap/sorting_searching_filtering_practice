class Player < ApplicationRecord
  belongs_to :team
  
  FILTER_PARAMS = %i[name team_id column direction].freeze

  scope :by_team, ->(team_id) { where(team_id: team_id) if team_id.present? }
  scope :by_name, ->(query) { where('players.name ilike ?', "%#{query}%") }
  
  def self.filter(filters)
    Player.includes(:team)
          .by_name(filters['name'])
          .by_team(filters['team_id'])
          .order("#{filters['column']} #{filters['direction']}")
  end
end
