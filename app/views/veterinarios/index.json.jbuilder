json.array!(@veterinarios) do |veterinario|
  json.extract! veterinario, :id, :nombre, :cargo, :asistencia
  json.url veterinario_url(veterinario, format: :json)
end
