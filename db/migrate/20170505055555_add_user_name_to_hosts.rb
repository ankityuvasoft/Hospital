class AddUserNameToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :user_name, :string
  end
end
