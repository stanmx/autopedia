class State < ActiveRecord::Base
  belongs_to :country
  has_many :cities
  attr_accessible :country_id, :description, :title

  validates_presence_of :country_id, :title

end
