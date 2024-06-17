class CreateInsides < ActiveRecord::Migration[6.1]
  def change
    create_table :insides do |t|
      t.string :event
      t.string :image
      t.text :overview
      t.string :url

      t.timestamps
    end
  end
end
