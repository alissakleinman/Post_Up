class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.datetime :game_time

      t.timestamps null: false
    end
  end
end
