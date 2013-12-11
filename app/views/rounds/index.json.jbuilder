json.array!(@rounds) do |round|
  json.extract! round, 
  json.url round_url(round, format: :json)
end
