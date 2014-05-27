json.array!(@products) do |product|
  json.extract! product, :id, :photo, :name, :description, :size, :buy_price, :sell_price
  json.url product_url(product, format: :json)
end
