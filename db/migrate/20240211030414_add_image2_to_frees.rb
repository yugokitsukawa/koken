class AddImage2ToFrees < ActiveRecord::Migration[6.1]
  def change
    add_column :frees, :images2, :string
  end
end
