class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :country_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
