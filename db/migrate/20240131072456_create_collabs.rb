class CreateCollabs < ActiveRecord::Migration[6.1]
  def change
    create_table :collabs do |t|
      t.string :event
      t.text :company
      t.string :image
      t.text :overview
      t.string :url

      t.timestamps
    end
  end
end
