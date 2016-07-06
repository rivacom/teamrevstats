class AddCompToDailystats < ActiveRecord::Migration
  def change
    add_column :dailystats, :compgp, :integer
    add_column :dailystats, :compwon, :integer
    add_column :dailystats, :comploss, :integer
    add_column :dailystats, :compwinper, :decimal
    add_column :dailystats, :compfb, :decimal
    add_column :dailystats, :compdeath, :decimal
    add_column :dailystats, :compmedal, :decimal
    add_column :dailystats, :compelim, :decimal
    add_column :dailystats, :compdam, :integer
    add_column :dailystats, :compheal, :integer
  end
end
