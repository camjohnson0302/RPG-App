json.array!(@homeworlds) do |homeworld|
  json.extract! homeworld, :id, :planet_type, :description, :summary, :traits, :careers, :img_url
  json.url homeworld_url(homeworld, format: :json)
end
