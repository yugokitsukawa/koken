class AddCatchToMarketings < ActiveRecord::Migration[6.1]
  def change
    add_column :marketings, :catch, :string
  end
end
