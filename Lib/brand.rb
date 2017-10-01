class Brand < ActiveRecord::Base
  has_many :brands_stores
  has_many :stores, through: :brands_stores
  validates(:name, :presence => true, :uniqueness => true)
  validates(:price, :presence => true)


  before_save(:capitalize_name)


private
  def capitalize_name
   self.name=(name.titlecase)
  end
end
