class Promotion < ActiveRecord::Base
  attr_accessible :banner_id, :promotion, :address, :promotion_content_type, :promotion_file_name, :promotion_file_size, :promotion_updated_at
  belongs_to :banner
  has_attached_file :promotion
end
