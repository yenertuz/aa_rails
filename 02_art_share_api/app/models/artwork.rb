class Artwork < ApplicationRecord

	validates :title, presence: true
	validates :image_url, presence: true
	validates :artist_id, presence: true 
	validates_uniqueness_of :artist_id, scope: :title

	belongs_to :artist,
		primary_key: :id,
		foreign_key: :artist_id,
		class_name: :User

	has_many :artwork_shares,
		primary_key: :id,
		foreign_key: :artwork_id,
		class_name: :ArtworkShare

	has_many :shared_viewers,
		through: :viewer,
		source: :artwork_shares

end