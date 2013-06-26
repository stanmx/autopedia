class Magazine < ActiveRecord::Base
  attr_accessible :description, :number, :title, :covers_attributes
  has_many :covers
  accepts_nested_attributes_for :covers, :allow_destroy => true
end
