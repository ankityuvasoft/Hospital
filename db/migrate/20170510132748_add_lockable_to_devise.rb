class AddLockableToDevise < ActiveRecord::Migration
  def change
  	 add_column :hosts, :failed_attempts, :integer, default: 0, null: false 
    add_column :hosts, :unlock_token, :string 
    add_column :hosts, :locked_at, :datetime
    add_index :hosts, :unlock_token, unique: true
  end
end
