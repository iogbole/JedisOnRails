json.array!(@jedis) do |jedi|
  json.extract! jedi, :id, :first_name, :last_name, :sex, :location, :picture
  json.url jedi_url(jedi, format: :json)
end
