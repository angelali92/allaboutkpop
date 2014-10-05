json.artist do |json|
  json.extract! @artist, :id, :first_name, :stage_name, :last_name, :agency, :isActor, :gender, :debut, :birthday, :bloodType, :horoscope
  json.image_url asset_url(@artist.image_url)
end