class Deck < ActiveRecord::Base
  attr_accessible :cards, :count, :trump_card_id, :cards_attributes
  has_many :cards, :dependent => :destroy
  accepts_nested_attributes_for :cards, :allow_destroy => :true
  belongs_to :game

end
