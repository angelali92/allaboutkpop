class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :stage_name
      t.string :last_name
      t.string :agency
      t.boolean :isActor
      t.string :gender
      t.date :debut
      t.date :birthday
      t.string :bloodType
      t.string :horoscope
      t.text :image_url
      
      t.timestamps
    end
  end
end
