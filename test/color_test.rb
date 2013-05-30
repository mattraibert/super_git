require 'test_helper'
require 'color'

class ColorTest < MiniTest::Unit::TestCase
  def test_colors
    assert_equal("\e[0;31mfoo\e[0m", Color.red("foo"))
    assert_equal("\e[0;33mfoo\e[0m", Color.yellow("foo"))
    assert_equal("\e[0;32mfoo\e[0m", Color.green("foo"))
  end
end