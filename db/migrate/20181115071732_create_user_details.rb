class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.text :fullname
      t.text :addres
      t.integer :gender
      t.integer :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
