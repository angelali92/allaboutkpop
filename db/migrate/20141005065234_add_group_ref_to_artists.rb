class AddGroupRefToArtists < ActiveRecord::Migration
  def change
    add_reference :artists, :group, index: true
  end
end
