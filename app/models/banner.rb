class Banner < ActiveRecord::Base
  attr_accessible :height, :section, :width, :promotions_attributes
  has_many :promotions
  accepts_nested_attributes_for :promotions, :allow_destroy => true

  validates_presence_of :section, :width, :height

end
