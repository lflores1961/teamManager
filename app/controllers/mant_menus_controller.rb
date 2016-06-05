class MantMenusController < ApplicationController

  def menuMant
    @opciones_mant = [
      {:letrero => "Conceptos",   :ruta => 'conceptos_path'},
      {:letrero => "Categorías",  :ruta => 'categorias_path'},
      {:letrero => "Jugadores",   :ruta => 'jugadores_path'},
      {:letrero => "Usuarios",    :ruta => '#'} ]
  end

end
