class AddColumnToHost < ActiveRecord::Migration
  def change
  	add_column :hosts, :confirmation_token, :string
  	add_column :hosts, :confirmed_at, :datetime
  	add_column :hosts, :confirmation_sent_at, :datetime
  	add_column :hosts, :unconfirmed_email, :string
  end
end
