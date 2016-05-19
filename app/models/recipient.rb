class Recipient < ActiveRecord::Base

	has_attached_file :image

	validates :firstName, presence: true
	validates :lastName, presence:true
	validates :phoneNumber, uniqueness: true, :allow_blank => true, :allow_nil => true
	validates :address, presence: true, uniqueness: true
	validates_attachment :image, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/gif', 'image/png', 'image/bmp']},
															 size: { less_than: 5.megabytes }

	has_many :contacts, :dependent => :destroy
end
