class CreateProductReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :review
      t.integer :rate

      t.timestamps
    end
  end
end
