require 'test_helper'

class JugadoresControllerTest < ActionController::TestCase
  setup do
    @jugador = jugadores(:luis)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugador" do
    assert_difference('Jugador.count') do
      post :create, jugador: { categoria: @jugador.categoria, celMama: @jugador.celMama, celPapa: @jugador.celPapa, direccion: @jugador.direccion, nombre: @jugador.nombre, numero: @jugador.numero, tallaFunda: @jugador.tallaFunda, tallaJersey: @jugador.tallaJersey, telefono: @jugador.telefono }
    end

    assert_redirected_to jugadores_url
  end

  test "should show jugador" do
    get :show, id: @jugador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jugador
    assert_response :success
  end

  test "should update jugador" do
    patch :update, id: @jugador, jugador: { categoria: @jugador.categoria, celMama: @jugador.celMama, celPapa: @jugador.celPapa, direccion: @jugador.direccion, nombre: @jugador.nombre, numero: @jugador.numero, tallaFunda: @jugador.tallaFunda, tallaJersey: @jugador.tallaJersey, telefono: @jugador.telefono }
    assert_redirected_to jugadores_url
  end

  test "should destroy jugador" do
    assert_difference('Jugador.count', -1) do
      delete :destroy, id: @jugador
    end

    assert_redirected_to jugadores_path
  end
end
