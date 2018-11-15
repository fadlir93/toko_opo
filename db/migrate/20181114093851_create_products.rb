class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.float :price
      t.integer :stock
      t.timestamps
    end
  end
end
