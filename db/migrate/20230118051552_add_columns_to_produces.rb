class AddColumnsToProduces < ActiveRecord::Migration[6.1]
  def change
    add_column :produces, :image, :string
    add_column :produces, :type, :string
    add_column :produces, :user_id, :integer
  end
end
