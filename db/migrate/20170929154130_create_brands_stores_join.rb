class CreateBrandsStoresJoin < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands_stores) do |join|
      join.column(:brand_id, :integer)
      join.column(:store_id, :integer)
    end
  end
end
