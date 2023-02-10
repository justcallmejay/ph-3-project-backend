class AddColumnCarts2 < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :purchased_at, :datetime
    remove_column :orders, :purchased_at, :datetime
  end
end
