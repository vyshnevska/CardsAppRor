class Player < ActiveRecord::Base
  attr_accessible :has_cards, :name, :game_id#, :min_suit_card_id, :own_cards, :suit_cards
  after_create :assign_has_cards
  has_and_belongs_to_many :games

  def assign_has_cards
    self.has_cards = false
  end
end
