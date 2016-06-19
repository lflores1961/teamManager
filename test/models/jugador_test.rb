require 'test_helper'

class JugadorTest < ActiveSupport::TestCase

  def setup
    @player = jugadores(:luis)
  end

  test "jugador must be valid" do
    assert @player.valid?
    assert @player.nombre == "Luis"
  end

  test "name must exist" do
    @player.nombre = ""
    assert_not @player.valid?
  end

  test "numero must be between 0 and 99" do
    @player.numero = 100
    assert_not @player.valid?
  end

  test "categoria must exist" do
    @player.categoria = ""
    assert_not @player.valid?
  end

end
