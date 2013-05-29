require 'test_helper'
require 'braces'

class BracesTest < MiniTest::Unit::TestCase
  def test_applies_braces
    assert_equal("<foo>", Braces.angle("foo"))
    assert_equal("{foo}", Braces.curly("foo"))
    assert_equal("(foo)", Braces.parens("foo"))
  end
end