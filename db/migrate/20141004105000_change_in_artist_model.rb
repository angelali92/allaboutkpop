class ChangeInArtistModel < ActiveRecord::Migration
  def change
  	change_column(:artists, :debut, :date)
  	change_column(:artists, :birthday, :date)
  	rename_column(:artists, :name, :first_name)
  	add_column(:artists, :stage_name, :string)
  	add_column(:artists, :last_name, :string)
  end
end
