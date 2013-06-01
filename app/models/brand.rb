class Brand < ActiveRecord::Base
  attr_accessible :description, :title, :logo

  #validate
  validates :title, :logo, :presence => true

  #paperclip
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
