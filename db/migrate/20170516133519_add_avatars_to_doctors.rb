class AddAvatarsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :avatars, :string
  end
end
