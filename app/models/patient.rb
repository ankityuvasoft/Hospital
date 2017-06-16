class Patient < ActiveRecord::Base
	#after_create :send_welcome_email
  #before_save :create_default_username
	has_many :appointments
	has_many :doctors, through: :appointments
	validates :name, :address, :presence => true, :length => { :minimum => 3 }
	#private
  #def send_welcome_email
   # send welcome email to host
  #end
end