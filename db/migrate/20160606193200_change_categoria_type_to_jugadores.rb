class ChangeCategoriaTypeToJugadores < ActiveRecord::Migration
  def change
    change_column :jugadores, :categoria, :string
  end
end
