require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../song")

class SongTest < Minitest::Test

  def setup()
    @song = Song.new("Love Shack", "The B-52's")
  end

  def test_song_name()
    assert_equal("Love Shack", @song.name())
  end

  def test_artist_has_name()
    assert_equal("The B-52's", @song.artist())
  end


end
