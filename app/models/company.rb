class Company < ActiveRecord::Base
  attr_accessible :about, :address, :category_id, :email, :location, :mision, :name, :phone, :schedule, :vision, :warranty, :web, :city_id, :pictures_attributes
  belongs_to :category
  belongs_to :city
  has_many :pictures
  accepts_nested_attributes_for :pictures, :allow_destroy => true
end
