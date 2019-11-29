require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')

class TestSong < Minitest::Test

  def setup
    @guest_1 = Guest.new("John", "Fairytale Of New York")
    @guest_2 = Guest.new("Philip", "I Wish It Could Be Christmas Everyday")
    @guest_3 = Guest.new("Bob", "Ug")
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
  # def test_guest_has_?
  #   assert_equal("?", @guest_2.location)
  # end

end
