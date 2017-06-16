class AddContactNoToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :contact_no, :string
  end
end
