class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :category_id
      t.string :name
      t.boolean :warranty
      t.string :address
      t.string :phone
      t.string :schedule
      t.string :email
      t.string :web
      t.text :about
      t.text :mision
      t.text :vision
      t.string :location

      t.timestamps
    end
  end
end
