class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates(:name, :presence => true)
  validates(:price, :presence => true)
  before_save(:capitalize_name)


private
  def capitalize_name
   self.name=(name.titlecase)
  end
end
