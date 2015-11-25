json.array!(@cita) do |citum|
  json.extract! citum, :id, :control, :fecha, :obsevacion, :recepcion_id
  json.url citum_url(citum, format: :json)
end
