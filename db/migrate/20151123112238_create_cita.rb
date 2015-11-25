class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.string :control
      t.date :fecha
      t.string :obsevacion
      t.references :recepcion, index: true

      t.timestamps
    end
  end
end
