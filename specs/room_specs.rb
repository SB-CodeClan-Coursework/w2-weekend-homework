require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')


class TestRoom < Minitest::Test

  def setup
    @room_1 = Room.new(1, "Glam Rock", @song_2)
    @room_2 = Room.new(2, "Christmas", @song_3)
    @room_3 = Room.new(3, "Pop", @song_1)
  end

  def test_room_has_number
    assert_equal(1, @room_1.room_number)
  end

  def test_room_has_style
    assert_equal("Christmas", @room_2.room_style)
  end

  def test_guest_class_is_being_passed_to_room_class
    assert_equal("John", @guest_1.name)
  end
  
end
