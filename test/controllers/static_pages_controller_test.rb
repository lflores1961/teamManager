require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "TEAM MANAGER"
    @opciones = %w{Registro_de_Jugadores Registro_de_Pagos Mantenimiento Consulta_Jugador Reporte_Global_PDF}
  end

  test "should get main_menu" do
    get :main_menu
    assert_response :success
    assert_select "title", "Inicio | #{@base_title}"
    @opciones.each do |op1|
      assert_select "a", op1
    end
  end

end
