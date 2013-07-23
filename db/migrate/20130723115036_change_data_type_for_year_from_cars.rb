class ChangeDataTypeForYearFromCars < ActiveRecord::Migration
   def up
  	change_column :cars, :year, :date
  end

  def down
  	change_column :cars, :year
  end
end
