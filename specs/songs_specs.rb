require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs.rb')

class TestSongs < Minitest::Test

  def setup

    @songs = [
      {
        name: "All I Want For Chritmas Is You",
        artist: "Mariah Carey",
        genre: "Pop",
        runtime: 354
      },
      {
        name: "I Wish It Could Be Christmas Everyday",
        artist: "Wizzard",
        genre: "Glam Rock",
        runtime: 624
      },
      {
        name: "Fairytale Of New York",
        artist: "The Pogues",
        genre: "Celtic Punk",
        runtime: 586
      }
    ]
  end

#1
def test_get_track_name
  assert_equal("I Wish It Could Be Christmas Everyday", @songs[:name])
end











end
