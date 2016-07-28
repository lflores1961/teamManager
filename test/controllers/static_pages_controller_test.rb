require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "TEAM MANAGER"
    @opciones = ['Registro de Jugadores', 'Registro de Pagos', 'Mantenimiento', 'Reporte de Pagos']
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
