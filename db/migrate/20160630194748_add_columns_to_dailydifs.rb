class AddColumnsToDailydifs < ActiveRecord::Migration
  def change
  
  add_column :dailydifs, :tqpgp, :integer
  add_column :dailydifs, :tcompgp, :integer
  add_column :dailydifs, :tqpwins, :integer
  add_column :dailydifs, :tcompwin, :integer
  add_column :dailydifs, :tqploss, :integer
  add_column :dailydifs, :tcomploss, :integer
  add_column :dailydifs, :tqpapdam, :integer
  add_column :dailydifs, :tcompdam, :integer
  add_column :dailydifs, :tqpheal, :integer
  add_column :dailydifs, :tcompheal, :integer
  add_column :dailydifs, :qpwinpercent, :decimal
  add_column :dailydifs, :compwinpercent, :decimal
  add_column :dailydifs, :tqpfb, :decimal
  add_column :dailydifs, :tcompfb, :decimal
  add_column :dailydifs, :tqpdeath, :decimal
  add_column :dailydifs, :tcompdeath, :decimal
  add_column :dailydifs, :tqpmedals, :decimal
  add_column :dailydifs, :tcompmedals, :decimal
  add_column :dailydifs, :tqpelim, :decimal
  add_column :dailydifs, :tcompelim, :decimal
        
  
  end
end
