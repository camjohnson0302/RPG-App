json.array!(@careers) do |career|
  json.extract! career, :id, :name, :description
  json.url career_url(career, format: :json)
end
