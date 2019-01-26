class ArtworkShare < ApplicationRecord

	validates_presence_of :artwork_id, :viewer_id
	validates_uniqueness_of :artwokr_id, scope: :viewer_id

	belongs_to :artwork,
		primary_key: :id,
		foreign_key: :artwork_id,
		class_name: :Artwork

	belongs_to :viewer,
		primary_key: :id,
		foreign_key: :viewer_id,
		class_name: :User

end