class StaticPagesController < ApplicationController

  def main_menu
    @options = [
      {:letrero => "Registro de Jugadores", :ruta => 'new_jugador_path'},
      {:letrero => "Registro de Pagos",     :ruta => 'jugadores_path'},
      {:letrero => "Reporte de Pagos",    :ruta => 'jugadores_reporte_path'},
      {:letrero => "Mantenimiento",         :ruta => 'mant_menus_menuMant_path'}]
  end
end
