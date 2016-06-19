require 'test_helper'

class PagosControllerTest < ActionController::TestCase
  setup do
    @pago = pagos(:one)
    @jugador = jugadores(:luis)
  end

  # When and if we use the nested resources in config/routes.rb like:
  # resources :jugadores do
  #   resources :pagos
  # end
  # that will generate routes like:
  # /jugadores/:jugador_id/pagos
  # we have to use this:
  # get :index, :jugador_id => 1

  test "should get index" do
  get :index, :jugador_id => 1
  assert_response :success
  end

  test "should count two records" do
    assert_equal 2, Pago.count
  end

  test "should directo to jugador luis" do
    assert_equal "Luis", @jugador.nombre
  end

  test "should have a concepto" do
    assert_equal "Temporada", @pago.concepto
  end

  test "should get new" do
    get :new, :jugador_id => jugadores(:luis).id
    assert_response :success
  end
end
