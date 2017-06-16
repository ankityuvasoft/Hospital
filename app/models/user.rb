class User < ActiveRecord::Base
	has_many :accounts, dependent: :destroy
	# validates_uniqueness_of :user,
	# conditions: -> { where.not(published_at: nil) }
	accepts_nested_attributes_for :accounts, :allow_destroy => true
end
