require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../room")
require_relative("../song")
require_relative("../customer")

class RoomTest < Minitest::Test

  def setup()
    @room_1 = Room.new("Sound Lounge", 4, [])
    @room_2 = Room.new("Crooner's Corner", 3, [])

    @customer_1 = Customer.new("Jerry", "Uptown Girl", 40)
    @customer_2 = Customer.new("George", "Love Shack", 25)
    @customer_3 = Customer.new("Elaine", "Dancing Queen", 30)
    @customer_4 = Customer.new("Kramer", "Start Me Up", 15)

    @song_1 = Song.new("Uptown Girl", "Billy Joel")
    @song_2 = Song.new("Love Shack", "The B-52s")
  end

  def test_room_has_name()
    assert_equal("Sound Lounge", @room_1.name())
  end

  def test_room_customer_limit()
    assert_equal(4, @room_1.customer_limit())
  end

  def test_occupants_in_room()
    assert_equal([], @room_1.guests())
  end

  def test_check_customer_in_room()
    @room_1.check_customer_in(@customer_3)
    assert_equal(1, @room_1.guests.length())
  end

  def test_remove_customer_from_room()
    @room_1.remove_customer_from_room(@customer_1)
    assert_equal(0, @room_1.guests.length())
  end

  # def test_add_song_to_room()
  #   @room_2.add_song_to_room(@song_2)
  #   assert_equal(2, @room_1.song.length())
  # end

  def test_room_occupancy_limit()
    occupancy_status = @room_2.room_occupancy_limit(@customer_4)
    assert_equal("Sorry, Room Full", occupancy_status)
  end



end
