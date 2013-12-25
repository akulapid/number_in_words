require 'test/test_helper'
require 'number_in_words'

class ShortScaleTest < Test::Unit::TestCase

  def test
    assert_equal 'zero', 0.in_words
    assert_equal 'one', 1.in_words
    assert_equal 'two', 2.in_words
    assert_equal 'five', 5.in_words
    assert_equal 'ten', 10.in_words
    assert_equal 'fourteen', 14.in_words
    assert_equal 'twenty', 20.in_words
    assert_equal 'sixty eight', 68.in_words
    assert_equal 'one hundred', 100.in_words
    assert_equal 'one hundred one', 101.in_words
    assert_equal 'one hundred three', 103.in_words
    assert_equal 'one hundred twelve', 112.in_words
    assert_equal 'one hundred forty', 140.in_words
    assert_equal 'one hundred ninety six', 196.in_words
    assert_equal 'three hundred', 300.in_words
    assert_equal 'nine hundred ninety nine', 999.in_words
    assert_equal 'one thousand', 1000.in_words
    assert_equal 'one thousand one', 1001.in_words
    assert_equal 'one thousand ten', 1010.in_words
    assert_equal 'one thousand one hundred', 1100.in_words
    assert_equal 'one thousand one hundred four', 1104.in_words
    assert_equal 'one thousand one hundred eleven', 1111.in_words
    assert_equal 'one thousand one hundred forty one', 1141.in_words
    assert_equal 'seven thousand six hundred two', 7602.in_words
    assert_equal 'eight thousand forty', 8040.in_words
    assert_equal 'ten thousand', 10000.in_words
    assert_equal 'eleven thousand', 11000.in_words
    assert_equal 'eleven thousand one', 11001.in_words
    assert_equal 'nineteen thousand fifty five', 19055.in_words
    assert_equal 'seventy thousand', 70000.in_words
    assert_equal 'seventy four thousand', 74000.in_words
    assert_equal 'seventy thousand eight hundred ninety nine', 70899.in_words
    assert_equal 'eighty eight thousand eight hundred ninety', 88890.in_words
    assert_equal 'ninety nine thousand nine hundred ninety nine', 99999.in_words
    assert_equal 'one hundred thousand', 100000.in_words
    assert_equal 'one hundred thousand one', 100001.in_words
    assert_equal 'one hundred thousand ten', 100010.in_words
    assert_equal 'one hundred thousand fifteen', 100015.in_words
    assert_equal 'one hundred thousand one hundred', 100100.in_words
    assert_equal 'one hundred thousand one hundred eight', 100108.in_words
    assert_equal 'three hundred thousand six hundred two', 300602.in_words
    assert_equal 'three hundred nine thousand', 309000.in_words
    assert_equal 'five hundred thousand', 500000.in_words
    assert_equal 'one million', 1000000.in_words
    assert_equal 'one million one hundred', 1000100.in_words
    assert_equal 'one hundred million', 100000000.in_words
    assert_equal 'one hundred million two hundred thousand three hundred forty five', 100200345.in_words
    assert_equal 'seven hundred five million two hundred fifty seven thousand one hundred thirty five', 705257135.in_words
    assert_equal 'one billion', 1000000000.in_words
    assert_equal 'one billion three hundred million', 1300000000.in_words
    assert_equal 'sixteen billion', 16000000000.in_words
  end

end
