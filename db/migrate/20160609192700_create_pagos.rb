class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.string :concepto
      t.decimal :cantidad
      t.references :jugador, index: true

      t.timestamps null: false
    end
    add_foreign_key :pagos, :jugadores
    add_index :pagos, [:jugador_id, :created_at]
  end
end
