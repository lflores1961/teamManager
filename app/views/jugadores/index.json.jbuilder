json.array!(@jugadores) do |jugador|
  json.extract! jugador, :id, :nombre, :numero, :categoria, :direccion, :telefono, :celPapa, :celMama, :tallaJersey, :tallaFunda
  json.url jugador_url(jugador, format: :json)
end
