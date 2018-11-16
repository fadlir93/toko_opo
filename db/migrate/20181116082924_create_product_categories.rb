class CreateProductCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.integer :product_id
      t.integer :category_id
<<<<<<< HEAD:db/migrate/20181116082924_create_product_categories.rb
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true
=======
      t.references :preview, foreign_key: true
      t.references :product, foreign_key: true
>>>>>>> 87cfb8590ca45287e56531e9ce517e59bf6c53f0:db/migrate/20181114095500_create_product_categories.rb

      t.timestamps
    end
  end
end
