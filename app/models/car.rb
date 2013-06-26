class Car < ActiveRecord::Base
  attr_accessible :city_id, :color, :contact_name, :email, :interior, :km_miles, :model_id, :new, :phone, :price, :radio, :status, :transmission, :video, :year, :photos_attributes
  belongs_to :model
  belongs_to :city
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true
end
