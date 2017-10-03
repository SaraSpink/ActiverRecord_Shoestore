class Brand < ActiveRecord::Base
  has_many :brands_stores
  has_many :stores, through: :brands_stores
  validates(:name, :presence => true)
  validates(:price, :presence => true)
  validates(:name, :uniqueness => true)


  before_save(:capitalize_name)

private
  def capitalize_name
   self.name=(name.titlecase)
  end
end
