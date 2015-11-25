class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.string :valor
      t.string :tratamiento
      t.string :insumo

      t.timestamps
    end
  end
end
