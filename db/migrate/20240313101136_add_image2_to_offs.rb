class AddImage2ToOffs < ActiveRecord::Migration[6.1]
  def change
    add_column :offs, :image2, :string
  end
end
