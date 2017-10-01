class Store < ActiveRecord::Base
  has_many :brands_stores
  has_many :brands, through: :brands_stores
  validates(:name, :presence => true)
  before_save(:capitalize_name)

private
  def capitalize_name
   self.name=(name.titlecase)
  end
end
