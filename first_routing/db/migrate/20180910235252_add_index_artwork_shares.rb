class AddIndexArtworkShares < ActiveRecord::Migration[5.2]
  def change
    remove_index :artwork_shares, :viewer_id
    remove_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :viewer_id, unique: true
    add_index :artwork_shares, :artwork_id, unique: true
    
  end
end

