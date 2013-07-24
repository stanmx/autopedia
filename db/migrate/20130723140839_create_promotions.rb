class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :promotion_file_name
      t.string :promotion_content_type
      t.integer :promotion_file_size
      t.datetime :promotion_updated_at
      t.integer :banner_id

      t.timestamps
    end
  end
end
