class Country < ActiveRecord::Base
	has_many :states
	has_many :cities
  	attr_accessible :description, :title

  	validates_presence_of :title
end
