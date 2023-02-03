class AddColumnCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :dsc_quantity, :integer
    add_column :carts, :dsc_total, :float
  end
end
