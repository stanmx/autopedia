class Photo < ActiveRecord::Base
  attr_accessible :car_id, :photo, :photo_content_type, :photo_file_name, :photo_file_size, :photo_updated_at
  belongs_to :car
  has_attached_file :photo, :styles => { 	:large => "520x320>", 
  											:thumb => "80x80>" 	}, 
  							:default_url => "/images/:style/missing.png"
end
