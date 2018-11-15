class CreateProductReview < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :review
      t.integer :rate
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
