class AddImages5ToFrees < ActiveRecord::Migration[6.1]
  def change
    add_column :frees, :images5, :string
  end
end
