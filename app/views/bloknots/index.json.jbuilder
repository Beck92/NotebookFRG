json.array!(@bloknots) do |bloknot|
  json.extract! bloknot, :id, :NameOfBkoknot
  json.url bloknot_url(bloknot, format: :json)
end
