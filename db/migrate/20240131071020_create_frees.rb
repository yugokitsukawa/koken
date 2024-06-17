class CreateFrees < ActiveRecord::Migration[6.1]
  def change
    create_table :frees do |t|
      t.string :number
      t.string :image
      t.string :catch
      t.text :overview
      t.text :company
      t.text :member
      t.string :url

      t.timestamps
    end
  end
end
