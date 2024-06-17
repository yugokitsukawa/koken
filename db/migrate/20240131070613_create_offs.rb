class CreateOffs < ActiveRecord::Migration[6.1]
  def change
    create_table :offs do |t|
      t.string :event
      t.string :image
      t.text :overview

      t.timestamps
    end
  end
end
