class Category < ActiveRecord::Base
  attr_accessible :description, :title, :icon
  has_many :companies

  #validate
  validates_presence_of :title, :icon

  #paperclip
  has_attached_file :icon, :styles => { :thumb => "80x80#", :marker => "40x40#" }, :default_url => "/images/:style/missing.png"

end
