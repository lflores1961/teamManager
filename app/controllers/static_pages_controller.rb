class StaticPagesController < ApplicationController
  def main_menu
    @options = %w(Registro_de_Jugadores Registro_de_Pagos Mantenimiento
    Consulta_Jugador Reporte_Global_PDF) 
  end
end
