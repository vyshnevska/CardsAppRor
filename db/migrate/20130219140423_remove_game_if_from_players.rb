class RemoveGameIfFromPlayers < ActiveRecord::Migration
  def up
    remove_column :players, :game_id
  end

  def down
    add_column :players, :game_id, :integer
  end
end
