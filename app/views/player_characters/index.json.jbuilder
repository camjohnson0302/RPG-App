json.array!(@player_characters) do |player_character|
  json.extract! player_character, :id
  json.url player_character_url(player_character, format: :json)
end
