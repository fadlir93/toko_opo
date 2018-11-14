class CreateProductReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.string :product_id
      t.string :int
      t.string :user_id
      t.string :int
      t.string :review
      t.string :string
      t.string :rate
      t.string :int

      t.timestamps
    end
  end
end
