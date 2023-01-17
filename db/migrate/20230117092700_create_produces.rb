class CreateProduces < ActiveRecord::Migration[6.1]
  def change
    create_table :produces do |t|
      t.string :produce
      t.float :price
      t.integer :quantity
      t.boolean :expiring_soon
      t.float :expiring_price
      t.integer :expiring_quantity

      t.timestamps
    end
  end
end
