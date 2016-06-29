class CreateDailydifs < ActiveRecord::Migration
  def change
    create_table :dailydifs do |t|

    t.integer :player_id, :precision => 16, :scale => 2
      t.integer :tgamesplayed, :precision => 16, :scale => 2
      t.integer :twins, :precision => 16, :scale => 2
      t.integer :tloss, :precision => 16, :scale => 2
      t.integer :tdamage, :precision => 16, :scale => 2
      t.integer :thealing, :precision => 16, :scale => 2
      t.decimal :winpercent, :precision => 16, :scale => 2
      t.decimal :tfinalblows, :precision => 16, :scale => 2
      t.decimal :tdeaths, :precision => 16, :scale => 2
      t.decimal :tmedals, :precision => 16, :scale => 2
      t.decimal :teliminations, :precision => 16, :scale => 2

      t.timestamps null: false
    end
  end
end
