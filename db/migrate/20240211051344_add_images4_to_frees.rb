class AddImages4ToFrees < ActiveRecord::Migration[6.1]
  def change
    add_column :frees, :images4, :string
  end
end
