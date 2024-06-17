class AddCatchToInsides < ActiveRecord::Migration[6.1]
  def change
    add_column :insides, :catch, :string
  end
end
