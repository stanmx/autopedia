class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :brand_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
