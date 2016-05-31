json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :name
  json.url categoria_url(categoria, format: :json)
end
