class AddCatchToOffs < ActiveRecord::Migration[6.1]
  def change
    add_column :offs, :catch, :string
  end
end
