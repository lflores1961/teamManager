class CreateJugadores < ActiveRecord::Migration
  def change
    create_table :jugadores do |t|
      t.string :nombre
      t.integer :numero
      t.integer :categoria
      t.string :direccion
      t.string :telefono
      t.string :celPapa
      t.string :celMama
      t.string :tallaJersey
      t.string :tallaFunda

      t.timestamps null: false
    end
  end
end
