class ChangeYearFromCars < ActiveRecord::Migration
  def up
  	change_column :cars, :year, :integer, :limit => 4
  end

  def down
  	change_column :cars, :year
  end
end
