class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :room
      t.integer :min_players
      t.integer :max_players
      t.integer :kind
      t.integer :instance

      t.timestamps
    end
    add_index :games, :room
    add_index :games, :kind
  end
end
