class Picture < ActiveRecord::Base
  attr_accessible :company_id, :picture_content_type, :picture_file_name, :picture_file_size, :picture_updated_at, :picture
  belongs_to :company
  has_attached_file :picture, :styles => { 	:large => "690x310", 
  											:medium => "220x220>", 
  											:thumb => "80x80>" 	}, 
  							:default_url => "/images/:style/missing.png"
end
