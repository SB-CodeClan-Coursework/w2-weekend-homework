require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')

class TestSong < Minitest::Test

  # def setup
  #   @song = [
  #     {
  #       name: "All I Want For Chritmas Is You",
  #       artist: "Mariah Carey",
  #       genre: "Pop",
  #     },
  #     {
  #       name: "I Wish It Could Be Christmas Everyday",
  #       artist: "Wizzard",
  #       genre: "Glam Rock",
  #     },
  #     {
  #       name: "Fairytale Of New York",
  #       artist: "The Pogues",
  #       genre: "Celtic Punk"
  #     }
  #           ]
  # end

  def setup
    @song_1 = Song.new("All I Want For Chritmas Is You", "Mariah Carey", "Pop")
    @song_2 = Song.new("I Wish It Could Be Christmas Everyday", "Wizzard", "Glam Rock")
    @song_3 = Song.new("Fairytale Of New York", "The Pogues", "Celtic Punk")
  end

  #1
  def test_song_has_name
    assert_equal("All I Want For Chritmas Is You", @song_1.name)
  end

  def test_song_does_not_exist
    
  end

  #2
  def test_song_has_artist
    assert_equal("The Pogues", @song_3.artist)
  end

  #3
  def test_song_has_genre
    assert_equal("Glam Rock", @song_2.genre)
  end
end
