class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    drop_table :categories
    create_table :categories do |t|
      t.text :name
      t.text :description
      t.timestamps
    end
  end
end
