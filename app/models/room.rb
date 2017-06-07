class Room < ApplicationRecord
	belongs_to :hotelapp
	has_many :bookings
    has_many :users, through: :bookings
    has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
