class Cover < ActiveRecord::Base
  attr_accessible :cover_content_type, :cover_file_name, :cover_file_size, :cover_updated_at, :magazine_id, :cover
  belongs_to :magazine
  has_attached_file :cover, :styles => { :large => "150x200#" }, :default_url => "/images/:style/missing.png"
end
