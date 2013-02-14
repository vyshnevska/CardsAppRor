class RemoveCardIdFromDecks < ActiveRecord::Migration
  def up
    remove_column :decks, :card_id
  end

  def down
    add_column :decks, :card_id, :integer
  end
end
