class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer :card_id
      t.integer :count
      t.integer :game_id
      #t.Array :players
      t.integer :trump_card_id

      t.timestamps
    end
  end
end
