require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')



class TestGuest < Minitest::Test

  def setup
    @guest_1 = Guest.new("John", "Fairytale Of New York", 100)
    @guest_2 = Guest.new("Philip", "I Wish It Could Be Christmas, Everyday", 200)
    @guest_3 = Guest.new("Bob", "Ug", 300)
  end

  #1
  def test_guest_has_name
    assert_equal("John", @guest_1.name)
  end

  #2
  def test_guest_has_favoutite_song
    assert_equal("Fairytale Of New York", @guest_1.fav_song)
  end

  # #3
  def test_guest_has_cash
    assert_equal(100, @guest_1.cash)
  end

end
