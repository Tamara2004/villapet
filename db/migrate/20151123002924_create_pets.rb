class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :nombre
      t.string :edad
      t.string :raza
      t.string :especie
      t.references :servicio, index: true

      t.timestamps
    end
  end
end
