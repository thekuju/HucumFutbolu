class Match < ActiveRecord::Base
  belongs_to :home_team, :class_name => "Team"
  belongs_to :away_team, :class_name => "Team"

  has_many :match_logs, :dependent => :delete_all

  # Dosent work, why?
  #validates :home_team_id, :uniqueness => { :scope => :away_team_id, :message => "cant be same as away team" }
  
  validates :home_score, :presence => true
  validates :away_score, :presence => true
end
