class CreateVeterinarios < ActiveRecord::Migration
  def change
    create_table :veterinarios do |t|
      t.string :nombre
      t.string :cargo
      t.string :asistencia

      t.timestamps
    end
  end
end
