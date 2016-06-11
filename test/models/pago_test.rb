require 'test_helper'

class PagoTest < ActiveSupport::TestCase

  def setup
    @jugador = Jugador.new(nombre: "Loco", numero: 23, categoria: "Petit", direccion: "Aqui", telefono: "234")
    @pago = @jugador.pagos.build(concepto: "Uniforme", cantidad: 123.50)
  end

  test "should be valid" do
    assert @pago.valid?
  end

  test "concepto should be present" do
    @pago.concepto = ""
    assert_not @pago.valid?
  end

  test "cantidad should be > 0" do
    @pago.cantidad = 0.0
    assert_not @pago.valid?
  end

  test "User should be accessible" do
    assert @pago.jugador.nombre == "Loco" 
  end

end
