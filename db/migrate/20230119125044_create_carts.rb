class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer   :quantity
      t.float     :total
      t.belongs_to :produce
      t.belongs_to :order

      t.timestamps
    end
  end
end
