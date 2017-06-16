class Account < ActiveRecord::Base
	belongs_to :user
	# validates_presence_of :user_id 
	# validate :user_exists 
 #  protected
 #  def user_exists 
 #  errors.add(:user_id, "doesn't exist") unless User.exists?(user_id)
 #  end
end
