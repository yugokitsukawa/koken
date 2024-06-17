class AddImages2ToInsides < ActiveRecord::Migration[6.1]
  def change
    add_column :insides, :images2, :string
    add_column :insides, :images3, :string
    add_column :insides, :images4, :string
    add_column :insides, :images5, :string
  end
end
