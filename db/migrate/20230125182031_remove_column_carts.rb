class RemoveColumnCarts < ActiveRecord::Migration[6.1]
  def change
    remove_column :carts, :name, :string
    remove_column :carts, :phone, :integer
    remove_column :carts, :discount, :boolean
    remove_column :carts, :discount_cost, :float
    remove_column :carts, :discount_quantity, :integer
  end
end
