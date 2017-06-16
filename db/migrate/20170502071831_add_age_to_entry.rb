class AddAgeToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :age, :Integer
  end
end
