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
    assert_equal(['c'], roman_encode(['a']))
  end

  def test_encode_shifts_2_letters_by_5
    assert_equal(['cd'], roman_encode(['ab']))
  end

  def test_decode_unshifts
    assert_equal(['ab'], roman_decode(['cd']))
  end

  def test_complex_encode_decode
    some_message = "Hey there"

    assert_equal(['Jga vjgtg'], roman_encode([some_message]))
    assert_equal(['Hey there'], roman_decode(['Jga vjgtg']))
  end

  def test_array_messages
    assert_equal(['cd', 'ef'], roman_encode(['ab', 'cd']))
    assert_equal(['ab', 'cd'], roman_decode(['cd', 'ef']))
  end
end