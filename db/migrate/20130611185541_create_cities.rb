class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :state_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
