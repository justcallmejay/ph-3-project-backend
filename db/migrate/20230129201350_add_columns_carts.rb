class AddColumnsCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :produce_id, :integer
    add_column :carts, :order_id, :integer
    remove_column :carts, :produce, :string
    remove_column :carts, :price, :float
    remove_column :carts, :purchase, :boolean
    remove_column :carts, :image, :string
  end
end
