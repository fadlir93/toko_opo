class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "ulogin"
      t.string "upass"
      t.string "username"
      t.string "uemail"
      t.timestamps
    end
  end
end
