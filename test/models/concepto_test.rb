require 'test_helper'

class ConceptoTest < ActiveSupport::TestCase

  def setup
    @concep = Concepto.new(name: "Loco", tarifa: 1.5)
  end

  test "Should be valid" do
    assert @concep.valid?
  end

  test "tarifa should be higher than 1" do
    @concep.tarifa = 0.50
    assert_not @concep.valid?
  end

  test "tarifa should be less than 10,000"do
    @concep.tarifa = 10000
    assert_not @concep.valid?
  end
  
  test "name should be present" do
    @concep.name = " "
    assert_not @concep.valid?
  end

  test "name should be larger than 3 chars" do
    @concep.name = "lo"
    assert_not @concep.valid?
  end

  test "name should be unique" do
    dupliconcep = @concep.dup
    @concep.save
    assert_not dupliconcep.valid?
  end

end
