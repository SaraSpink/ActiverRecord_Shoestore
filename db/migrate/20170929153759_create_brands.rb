class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |brands|
      brands.column(:name, :string)
      brands.column(:price, :decimal)
    end
  end
end
