class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates(:name, :presence => true)
  before_save(:format_price)

private
  def format_price
   self.price=(name.titlecase)
  end
end
