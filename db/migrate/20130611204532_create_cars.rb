class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :model_id
      t.integer :city_id
      t.string :year
      t.string :status
      t.decimal :price, :precision => 8, :scale => 2, :default => 0.0
      t.boolean :new
      t.string :color
      t.string :interior
      t.string :transmission
      t.string :km_miles
      t.text :video
      t.string :contact_name
      t.string :email
      t.string :phone
      t.string :radio

      t.timestamps
    end
  end
end
