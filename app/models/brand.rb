class Brand < ActiveRecord::Base
  has_many :models
  has_many :cars
  attr_accessible :description, :title, :logo, :delete_logo
  
  #delete existing logo from edit view with checkbox.
  attr_accessor :delete_logo
  before_validation { logo.clear if delete_logo == '1' }
  
  #validate
  validates_presence_of :title

  #paperclip
  has_attached_file :logo, :styles => { :thumb => "100x100#", :small => "100x65#" }

end
