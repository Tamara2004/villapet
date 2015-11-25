json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :valor, :tratamiento, :insumo
  json.url servicio_url(servicio, format: :json)
end
