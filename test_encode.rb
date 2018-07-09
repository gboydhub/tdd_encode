require 'minitest/autorun'
require_relative 'encode.rb'

class TestRomanEncode < Minitest::Test
  def test_assert_1_equals_1
    assert_equal(1, 1)
  end

  def test_encode_returns_array
    assert_equal(Array, roman_encode(['']).class)
  end

  def test_encode_retrns_string_array
    assert_equal(String, roman_encode(['a'], 2)[0].class)
  end

  def test_encode_shifts_by_5
    assert_equal(['c'], roman_encode(['a'], 2))
  end

  def test_encode_shifts_2_letters_by_5
    assert_equal(['cd'], roman_encode(['ab'], 2))
  end

  def test_decode_returns_array
    assert_equal(Array, roman_decode([''], 2).class)
  end

  def test_decode_returns_string_array
    assert_equal(String, roman_decode(['a'], 2)[0].class)
  end

  def test_decode_unshifts
    assert_equal(['ab'], roman_decode(['cd'], 2))
  end

  def test_complex_encode
    some_message = "Hey there"

    assert_equal(['Jga vjgtg'], roman_encode([some_message], 2))
  end

  def test_complex_decode
    some_message = "Hey there"
    
    assert_equal(['Hey there'], roman_decode(['Jga vjgtg'], 2))
  end

  def test_array_messages_encode
    assert_equal(['cd', 'ef'], roman_encode(['ab', 'cd'], 2))
  end
  
  def test_array_messages_decode
    assert_equal(['ab', 'cd'], roman_decode(['cd', 'ef'], 2))
  end

  def test_encode_handles_31
    assert_equal(['fg'], roman_encode(['ab'], 31))
  end

  def test_decode_handles_31
    assert_equal(['ab'], roman_decode(['fg'], 31))
  end
end