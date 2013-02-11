class Deck < ActiveRecord::Base
  attr_accessible :cards, :count, :players, :trump
  has_many :cards
  belongs_to :game
  #serialize :cards
end
