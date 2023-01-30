class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :phone
      t.integer :credit_card
      t.integer :exp_mon
      t.integer :exp_yr
      t.integer :code
      t.datetime :purchased_at

      t.timestamps
    end
  end
end
