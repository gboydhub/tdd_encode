require 'minitest/autorun'
require_relative 'encode.rb'

class TestRomanEncode < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_encode_returns_string
    assert_equal(String, roman_encode("").class)
  end

  def test_encode_shifts_by_5
    assert_equal('f', roman_encode('a'))
  end
end