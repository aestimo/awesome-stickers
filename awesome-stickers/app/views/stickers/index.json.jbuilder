json.array!(@stickers) do |sticker|
  json.extract! sticker, :id, :photo, :name, :description, :tags
  json.url sticker_url(sticker, format: :json)
end
