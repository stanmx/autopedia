class Category < ActiveRecord::Base
  attr_accessible :description, :title, :icon, :delete_icon
  has_many :companies

  #delete existing icon from edit view with checkbox.
  attr_accessor :delete_icon
  before_validation { icon.clear if delete_icon == '1' }

  #validate
  validates_presence_of :title, :icon

  #paperclip
  has_attached_file :icon, :styles => { :thumb => "80x80#", :marker => "40x40#" }

end
