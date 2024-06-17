class AddImages2ToMarketings < ActiveRecord::Migration[6.1]
  def change
    add_column :marketings, :images2, :string
    add_column :marketings, :images3, :string
    add_column :marketings, :images4, :string
    add_column :marketings, :images5, :string
  end
end
