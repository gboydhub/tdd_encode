require 'minitest/autorun'
require_relative 'encode.rb'

class TestRomanEncode < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_encode_returns_string
    assert_equal(Array, roman_encode(['']).class)
  end

  def test_encode_shifts_by_5
    assert_equal(['f'], roman_encode(['a']))
  end

  def test_encode_shifts_2_letters_by_5
    assert_equal(['fg'], roman_encode(['ab']))
  end

  def test_decode_unshifts
    assert_equal(['ab'], roman_decode(['fg']))
  end

  def test_complex_encode_decode
    some_message = "Kill kill"

    assert_equal(['Pnqq pnqq'], roman_encode([some_message]))
    assert_equal(['Kill kill'], roman_decode(['Pnqq pnqq']))
  end
end