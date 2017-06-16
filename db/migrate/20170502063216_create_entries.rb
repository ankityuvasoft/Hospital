class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :description
      t.string :gender
      t.string :remember_me

      t.timestamps null: false
    end
  end
end
