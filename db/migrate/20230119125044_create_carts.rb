class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.string    :produce
      t.float     :price
      t.integer   :quantity
      t.float     :total
      t.string    :image
    end
  end
end
