class AddColumnsToProduces < ActiveRecord::Migration[6.1]
  def change
    add_column :produces, :image, :string
    add_column :produces, :kind, :string
  end
end
