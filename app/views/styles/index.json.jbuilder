json.array!(@styles) do |style|
  json.extract! style, :id, :name, :stock, :description, :color, :color1, :color2, :color3, :color4, :tribe, :location
  json.url style_url(style, format: :json)
end
