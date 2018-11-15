class CreateProductCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.integer :product_id
      t.integer :category_id
      t.references :preview
      t.references :product

      t.timestamps
    end
  end
end
