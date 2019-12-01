require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

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
end
