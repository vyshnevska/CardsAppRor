class CreateGamesPlayers < ActiveRecord::Migration
  def self.up
    create_table 'games_players', :id => false do |t|
      t.column :game_id, :integer
      t.column :player_id, :integer
    end
  end
end
