class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.integer :number
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
