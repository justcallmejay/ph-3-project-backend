class AddColumnOnCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :purchase, :boolean
    add_column :carts, :name, :string
    add_column :carts, :phone, :integer
    add_column :carts, :discount, :boolean
    add_column :carts, :discount_cost, :float
    add_column :carts, :discount_quantity, :integer
  end
end
