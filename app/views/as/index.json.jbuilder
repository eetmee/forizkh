json.array!(@as) do |a|
  json.extract! a, :name
  json.url a_url(a, format: :json)
end