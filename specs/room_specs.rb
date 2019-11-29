require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')

class TestRoom < Minitest::Test

  def setup
    @room_1 = Room.new(1, "Glam Rock")
    @room_2 = Room.new(2, "Chritmas")
    @room_3 = Room.new(3, "Pop")
  end

  def test_room_has_number
    assert_equal(1, @room_1.room_number)
  end

  # def test_room_has_style
  #   assert_equal("Glam_Rock", @room_1.room_style)
  # end


end
