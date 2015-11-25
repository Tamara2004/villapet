json.array!(@recepcions) do |recepcion|
  json.extract! recepcion, :id, :cliente_id, :veterinario_id
  json.url recepcion_url(recepcion, format: :json)
end
