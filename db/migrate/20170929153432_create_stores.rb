class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |stores|
      stores.column(:name, :string)
    end
  end
end
