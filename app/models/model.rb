class Model < ActiveRecord::Base
  belongs_to :brand
  has_many :cars
  attr_accessible :brand_id, :description, :title
end
