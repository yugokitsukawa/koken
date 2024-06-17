class AddImage4ToOffs < ActiveRecord::Migration[6.1]
  def change
    add_column :offs, :image4, :string
  end
end
