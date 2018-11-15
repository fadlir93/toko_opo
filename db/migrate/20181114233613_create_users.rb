class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.primary_key "user_id"
      t.string "ulogin"
      t.string "upass"
      t.string "username"
      t.string "uemail"
      t.text "fullname"
      t.integer "phonenumber"
      t.string "ustatus"
      t.string "ugender"
      t.string "urating"
      t.text "address"
      t.text "ubio"
      t.timestamps
    end
  end
end
