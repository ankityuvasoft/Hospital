class Host < ActiveRecord::Base
	validates :user_name, uniqueness: true
	validates :contact_no, uniqueness: true
  #before_create :record_signup
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :confirmable, :omniauthable


def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
end
def self.find_for_database_authentication(conditions={})
  find_by(user_name: conditions[:email]) || find_by(email: conditions[:email]) || find_by(contact_no: conditions[:email])
end
 # def confirmation_required?
 #  true
 # end

  # private
  #   def record_signup
  #     self.sign_in_count = Date.today
  #   end


#attr_accessor :login
#protected
 # def self.find_for_database_authentication(warden_conditions)
  #  conditions = warden_conditions.dup
   #  if login = conditions.delete(:login)
    #    where(conditions.to_h).where(["lower(user_name) = :value OR lower(email) = :value OR lower(contact_no) = :value", { :value => login.downcase }]).first
     #else
      #  where(conditions.to_h).first
     #end
   #end 
end