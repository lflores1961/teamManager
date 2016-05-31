require 'test_helper'

class CategoriaTest < ActiveSupport::TestCase


def setup
  @cate = Categoria.new(name: "Loco")
end

test "should be valid" do
  assert @cate.valid?
end

test "name should be present" do
  @cate.name = ""
  assert_not @cate.valid?
end

test "name should be larger than 3 chars" do
  @cate.name = "lo"
  assert_not @cate.valid?
end

test "name should be unique" do
  cateDup = @cate.dup
  @cate.save
  assert_not cateDup.valid?
end

end
