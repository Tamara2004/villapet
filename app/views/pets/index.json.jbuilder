json.array!(@pets) do |pet|
  json.extract! pet, :id, :nombre, :edad, :raza, :especie, :servicio_id
  json.url pet_url(pet, format: :json)
end
