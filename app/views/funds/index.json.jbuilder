json.array!(@funds) do |fund|
  json.extract! fund, :id, :title, :source, :type, :age_range, :deadline, :location
  json.url fund_url(fund, format: :json)
end
