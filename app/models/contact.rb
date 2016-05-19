class Contact < ActiveRecord::Base
	validates :recipient_id, presence: true
	validates :date, presence: true
	validates :note, presence: true
	validates :action, presence: true

	belongs_to :recipient
end
