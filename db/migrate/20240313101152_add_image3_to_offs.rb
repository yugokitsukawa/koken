class AddImage3ToOffs < ActiveRecord::Migration[6.1]
  def change
    add_column :offs, :image3, :string
  end
end
