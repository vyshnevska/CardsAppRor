class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :has_cards
      #t.integer :min_suit_card_id
      t.timestamps
    end
  end
  def up
   # add_column :name, :string, :has_cards, :boolean
  end

  def down
  end
end
