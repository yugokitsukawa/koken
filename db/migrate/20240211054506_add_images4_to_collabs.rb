class AddImages4ToCollabs < ActiveRecord::Migration[6.1]
  def change
    add_column :collabs, :images4, :string
  end
end
