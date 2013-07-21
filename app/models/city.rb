class City < ActiveRecord::Base
  belongs_to :country
  belongs_to :state
  has_many :cars
  has_many :companies
  attr_accessible :description, :state_id, :title

  validates_presence_of :state_id, :title
end
