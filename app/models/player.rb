class Player < ActiveRecord::Base
  attr_accessible :has_cards, :name, :game_id#, :min_suit_card_id, :own_cards, :suit_cards
  after_create :assign_has_cards
  belongs_to :game

  def assign_has_cards
    self.has_cards = false
  end
end
