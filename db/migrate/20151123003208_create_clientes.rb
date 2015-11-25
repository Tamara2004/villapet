class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :direccion
      t.string :contacto
      t.references :pet, index: true

      t.timestamps
    end
  end
end
