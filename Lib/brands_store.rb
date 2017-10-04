class BrandsStore < ActiveRecord::Base
  belongs_to :brand
  belongs_to :store
  
  validates :brand_id, uniqueness: {scope: :store_id}
end
