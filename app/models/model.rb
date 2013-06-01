class Model < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :brand_id, :description, :title
end
