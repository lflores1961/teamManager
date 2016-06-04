json.array!(@conceptos) do |concepto|
  json.extract! concepto, :id, :name, :tarifa
  json.url concepto_url(concepto, format: :json)
end
