class CreateProduces < ActiveRecord::Migration[6.1]
  def change
    create_table :produces do |t|
      t.string :produce
      t.float :price
      t.integer :quantity
      t.boolean :discount
      t.float :discount_price
      t.integer :discount_quantity
      t.string :image
      t.string :kind

      t.timestamps
    end
  end
end
