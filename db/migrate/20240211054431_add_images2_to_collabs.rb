class AddImages2ToCollabs < ActiveRecord::Migration[6.1]
  def change
    add_column :collabs, :images2, :string
  end
end
