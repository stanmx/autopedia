class AddLatitudeAndLongitudeAndGmapsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :latitude, :float
    add_column :companies, :longitude, :float
    add_column :companies, :gmaps, :boolean
    remove_column :companies, :location
  end
end
