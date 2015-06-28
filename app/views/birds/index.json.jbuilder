json.array!(@birds) do |bird|
  json.extract! bird, :id, :schema, :title, :description, :type, :required, :additionalProperties
  json.property do
    json.id   bird.property.id
    json.name bird.property.name
    json.family bird.property.family
    json.continents bird.property.continents
    json.added bird.property.added
    json.visible bird.property.visible
  end
end





