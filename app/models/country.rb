class Country < ActiveRecord::Base
	has_many :states
  	attr_accessible :description, :title
end
