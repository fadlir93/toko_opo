class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      
      t.integer :user_id
      t.date :order_date
      t.date :shipping_id

      t.timestamps
    end
  end
end
