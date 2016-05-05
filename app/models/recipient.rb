class Recipient < ActiveRecord::Base

	validates :firstName, presence: true
	validates :lastName, presence:true
	validates :phoneNumber, uniqueness: true, :allow_blank => true, :allow_nil => true
	validates :address, presence: true, uniqueness: true
end
