class AddImages5ToCollabs < ActiveRecord::Migration[6.1]
  def change
    add_column :collabs, :images5, :string
  end
end
