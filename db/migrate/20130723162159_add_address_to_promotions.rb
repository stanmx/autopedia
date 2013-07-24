class AddAddressToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :address, :string
  end
end
