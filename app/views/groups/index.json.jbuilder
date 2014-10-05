json.groups @groups do |group|
  json.extract! group, :id, :name, :agency, :num_members, :gender, :debut
  json.image_url asset_url(group.image_url)

end