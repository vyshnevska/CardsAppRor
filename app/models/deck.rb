class Deck < ActiveRecord::Base
  attr_accessible :cards, :count, :players, :trump_card_id, :cards_attributes
  #SUITS = %w(Spade Heart Club Diamond)
  has_many :cards, :dependent => :destroy
  accepts_nested_attributes_for :cards, :allow_destroy => :true
  belongs_to :game
  #serialize :cards
end
