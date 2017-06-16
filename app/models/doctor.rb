class Doctor < ActiveRecord::Base
	#after_save :expire_cache_by_name
	#before_create :set_login
	has_many :appointments
	has_many :patients, through: :appointments
	mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

	#private
	#def set_login
  #	self.login = self.name
	#end
	#def expire_cache_by_name
  #Rails.cache.expire("my_object:name:#{self.name}")
	#end
end
