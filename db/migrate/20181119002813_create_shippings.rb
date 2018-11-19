class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.text :name
      t.text :description
      t.refrences :order

      t.timestamps
    end
  end
end
