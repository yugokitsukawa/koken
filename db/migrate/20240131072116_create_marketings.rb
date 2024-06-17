class CreateMarketings < ActiveRecord::Migration[6.1]
  def change
    create_table :marketings do |t|
      t.string :event
      t.string :image
      t.text :overview
      t.string :result
      t.string :url

      t.timestamps
    end
  end
end
