require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../room")

class RoomTest < Minitest::Test

  def setup()
    @room = Room.new("Sound Lounge", 4, [])
  end

  def test_room_has_name()
    assert_equal("Sound Lounge", @room.name())
  end

  def test_room_customer_limit()
    assert_equal(4, @room.customer_limit())
  end
  
end
