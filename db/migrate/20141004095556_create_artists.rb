class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :agency
      t.boolean :isActor
      t.string :gender
      t.datetime :debut
      t.datetime :birthday
      t.string :bloodType
      t.string :horoscope

      t.timestamps
    end
  end
end
