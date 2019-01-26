class CreateArtworkShares < ActiveRecord::Migration[5.2]
  def change
	create_table :artwork_shares do |t|
		t.timestamps
		t.integer :artwork_id, presence: true
		t.integer :viewer_id, presence: true
	end
	
	add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true

  end
end
