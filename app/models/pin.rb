class Pin < ActiveRecord::Base
	belongs_to :user

	# extend FriendlyId
 #  	friendly_id :id, use: :title
 	validates :title, :discription, presence: true
end
