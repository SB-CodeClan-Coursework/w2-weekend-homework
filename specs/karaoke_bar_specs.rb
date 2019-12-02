require('minitest/autorun')
require('minitest/reporters')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../song')
require_relative('../guest')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new



class TestKaraokebar < Minitest::Test

  def setup
    @song_1 = Song.new("All I Want For Chritmas Is You", "Mariah Carey", "Pop")
    @song_2 = Song.new("I Wish It Could Be Christmas Everyday", "Wizzard", "Glam Rock")
    @song_3 = Song.new("Fairytale Of New York", "The Pogues", "Celtic Punk")

    @guest_1 = Guest.new("John", "Fairytale Of New York", 100)
    @guest_2 = Guest.new("Philip", "I Wish It Could Be Christmas, Everyday", 200)
    @guest_3 = Guest.new("Bob", "Ug", 300)

    @room_1 = Room.new(1, "Glam Rock", @song_2)
    @room_2 = Room.new(2, "Christmas", @song_3)
    @room_3 = Room.new(3, "Pop", @song_1)
    @fun_times = Karaokebar.new("Fun Times Karaoke Bar", [@room_1, @room_2, @room_3], 2000, 2)
    # @fun_times.add_guest(@room_1, @guest_1)
    # @fun_times.add_guest(@room_2, @guest_2)
    # @fun_times.add_guest(@room_3, @guest_3)
  end

  def test_karaoke_bar_has_name
    assert_equal("Fun Times Karaoke Bar", @fun_times.name)
  end

  def test_till_balance
    assert_equal(2000, @fun_times.till_balance)
  end

  def test_can_increase_till_balance
    @fun_times.increase_till(100)
    assert_equal(2100, @fun_times.till_balance)
  end

  def test_increase_till_balance_can_increase_by_entrance_fee
    @fun_times.increase_till(@fun_times.entrance_fee)
    assert_equal(2002, @fun_times.till_balance)
  end



end
