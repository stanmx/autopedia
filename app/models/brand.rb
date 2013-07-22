class Brand < ActiveRecord::Base
  has_many :models
  has_many :cars
  attr_accessible :description, :title, :logo, :delete_logo
  attr_accessor :delete_logo

  #validate
  validates_presence_of :title

  #paperclip
  has_attached_file :logo, :styles => { :medium => "300x300#", :thumb => "100x100#", :small => "100x65#" }

end
