class Game < ActiveRecord::Base
  attr_accessible :name, :game_date, :player_id
  #attr_writer :name
  validates :name, :presence => true
  has_one :deck
  has_many :players
  before_save :assign_date

  def assign_date
    self.game_date = Date.today
  end
end
