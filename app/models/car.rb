class Car < ActiveRecord::Base
  attr_accessible :city_id, :color, :contact_name, :email, :interior, :km_miles, :model_id, :new, :phone, :price, :radio, :status, :transmission, :video, :year, :photos_attributes
  belongs_to :brand
  belongs_to :model
  belongs_to :city
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true

  def self.search(search)
    result = order('new DESC')
    result = joins(:model => :brand).where('brands.title LIKE ? OR models.title LIKE ? OR status LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%").order('new DESC') if search.present?
    result
  end

  def self.year(fyear,tyear)
    result = order('new DESC')
    result = where(:year => fyear..tyear) if fyear.present? && tyear.present? 
    result
  end

  def self.price(fprice,tprice)
    result = order('new DESC')
    result = where(:price => fprice..tprice) if fprice.present? && tprice.present? 
    result
  end

  def self.location(fstate,fcity)
    result = order('new DESC')
    result = joins(:city => :state).where('states.title LIKE ? AND cities.title LIKE ?', fstate, fcity).order('new DESC') if fstate.present? && fcity.present?
    result
  end



end
