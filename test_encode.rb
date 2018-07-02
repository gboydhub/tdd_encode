require 'minitest/autorun'
require_relative 'encode.rb'

class TestFetchCode < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_encode_returns_string
    assert_equal(String, roman_encode(""))
  end
end