class AddImages3ToCollabs < ActiveRecord::Migration[6.1]
  def change
    add_column :collabs, :images3, :string
  end
end
