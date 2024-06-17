class AddImage3ToFrees < ActiveRecord::Migration[6.1]
  def change
    add_column :frees, :images3, :string
  end
end
