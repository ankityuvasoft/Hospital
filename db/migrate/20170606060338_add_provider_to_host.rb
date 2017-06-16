class AddProviderToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :provider, :string
    add_column :hosts, :oauth_token, :string
    add_column :hosts, :oauth_expires_at, :datetime  
  end
end
