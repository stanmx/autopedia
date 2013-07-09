class Company < ActiveRecord::Base
  attr_accessible :about, :address, :category_id, :email, :mision, :name, :phone, :schedule, :vision, :warranty, :web, :city_id, :latitude, :longitude, :gmaps, :pictures_attributes
  belongs_to :category
  belongs_to :city
  has_many :pictures
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  acts_as_gmappable

  def gmaps4rails_address
    "#{address}" 
  end

  def gmaps4rails_marker_picture
  	{
	  "picture" => "#{category.icon.url(:marker)}",
	  "width" => 50,
	  "height" => 50,
	  "marker_anchor" => [20, 0],
  	}
  end

  def self.search(search)
    result = order('created_at DESC' && :conditions => { :warranty => true })
    result = result.joins(:category).where('name LIKE ? OR categories.title LIKE ?', "%#{search}%", "%#{search}%").order('created_at DESC' && :conditions => { :warranty => true }) if search.present?
    result
  end

end
