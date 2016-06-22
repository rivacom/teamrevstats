class CreateDailystats < ActiveRecord::Migration
  def change
    create_table :dailystats do |t|
      t.integer :player_id, :precision => 16, :scale => 2
      t.integer :gamesplayed, :precision => 16, :scale => 2
      t.integer :win, :precision => 16, :scale => 2
      t.integer :loss, :precision => 16, :scale => 2
      t.decimal :winpercent, :precision => 16, :scale => 2
      t.decimal :finalblows, :precision => 16, :scale => 2
      t.decimal :deaths, :precision => 16, :scale => 2
      t.decimal :medals, :precision => 16, :scale => 2
      t.decimal :eliminations, :precision => 16, :scale => 2
      t.integer :damage, :precision => 16
      t.integer :healing, :precision => 16
      t.date    :statdate
      
      t.timestamps null: false
    end
  end
end
