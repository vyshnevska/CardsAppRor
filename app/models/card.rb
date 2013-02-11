class Card < ActiveRecord::Base
  attr_accessible :id, :suit, :value
  belongs_to :deck
end
