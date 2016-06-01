class StaticPagesController < ApplicationController

  def main_menu
    @options = [
      {:letrero => "Registro de Jugadores", :ruta => '#'},
      {:letrero => "Registro de Pagos",     :ruta => '#'},
      {:letrero => "Mantenimiento",         :ruta => 'mant_menus_menuMant_path'},
      {:letrero => "Consulta Jugador",      :ruta => '#'},
      {:letrero => "Reporte Global PDF",    :ruta => '#'}]
  end
end
