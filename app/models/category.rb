class Category < ActiveRecord::Base
  attr_accessible :description, :title, :icon
  has_many :companies

  #validate
  validates :title, :icon, :presence => true

  #paperclip
  has_attached_file :icon, 	:styles 		=> { :thumb => "80x80>" }, 
  							:default_url 	=> "/images/:style/missing.png"

end
