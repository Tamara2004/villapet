class CreateRecepcions < ActiveRecord::Migration
  def change
    create_table :recepcions do |t|
      t.references :cliente, index: true
      t.references :veterinario, index: true

      t.timestamps
    end
  end
end
