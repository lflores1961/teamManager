class ChangeCategoriaTypeToJugadores < ActiveRecord::Migration[4.2]
  def change
    change_column :jugadores, :categoria, :string
  end
end
