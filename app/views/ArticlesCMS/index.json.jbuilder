json.array!(@articles) do |article|
  json.extract! article, :id, :name, :content, :description, :thumbnail
  json.url article_url(article, format: :json)
end
