class City < ActiveRecord::Base
  belongs_to :state
  has_many :cars
  has_many :companies
  attr_accessible :description, :state_id, :title
end
