class State < ActiveRecord::Base
  belongs_to :country
  has_many :cities
  attr_accessible :country_id, :description, :title
end
