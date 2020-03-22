require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../song")

class SongTest < Minitest::Test

  def setup()
    @song = Song.new("Uptown Girl", "Billy Joel")
  end

  def test_song_name()
    assert_equal("Uptown Girl", @song.name())
  end

  def test_artist_has_name()
    assert_equal("Billy Joel", @song.artist())
  end


end
