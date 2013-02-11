class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :has_cards
      t.[]Card :own_cards
      t.[]Card :suit_cards
      t.Card :min_suit_card

      t.timestamps
    end
  end
end
