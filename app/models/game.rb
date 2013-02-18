class Game < ActiveRecord::Base
  attr_accessible :name, :game_date, :players, :players_attributes
  validates :name, :presence => true
  has_one :deck
  has_many :players
  before_save :assign_date
  accepts_nested_attributes_for :players, :allow_destroy => :true
  def assign_date
    self.game_date = Date.today
  end
end
