class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_confirmation
      t.string :email

      t.timestamps null: false
    end
  end
end
