class AddMoreColumnsToProduces < ActiveRecord::Migration[6.1]
  def change
    remove_column :produces, :expiring_soon, :boolean
    remove_column :produces, :expiring_price, :float
    remove_column :produces, :expiring_quantity, :integer
    add_column :produces, :discount, :boolean
    add_column :produces, :discount_price, :float
    add_column :produces, :discount_quantity, :integer
  end
end
