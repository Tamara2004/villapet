class Recepcion < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :veterinario
end
