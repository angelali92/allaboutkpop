class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :image_url
      t.string :name
      t.string :agency
      t.integer :num_members
      t.string :gender
      t.date :debut
      t.integer :avg_age
      t.string :avg_height

      t.timestamps
    end
  end
end
