class FirstNameToHosts < ActiveRecord::Migration
  def change
  	add_column :hosts, :first_name, :string
  	add_column :hosts, :last_name, :string
    add_column :hosts, :date_of_birth, :datetime
    add_column :hosts, :is_female, :boolean, default: false
  end
end
