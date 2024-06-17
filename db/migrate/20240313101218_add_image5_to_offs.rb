class AddImage5ToOffs < ActiveRecord::Migration[6.1]
  def change
    add_column :offs, :image5, :string
  end
end
