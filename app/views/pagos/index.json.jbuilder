json.array!(@pagos) do |pago|
  json.extract! pago, :id, :concepto, :cantidad, :jugador_id
  json.url pago_url(pago, format: :json)
end
