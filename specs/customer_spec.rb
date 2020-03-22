require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../customer")

class CustomerTest < Minitest::Test

def setup()

  @customer_1 = Customer.new("Jerry", "Uptown Girl", 40)
  @customer_2 = Customer.new("George", "Love Shack", 25)
  @customer_3 = Customer.new("Elaine", "Dancing Queen", 30)
  @customer_4 = Customer.new("Kramer", "Start Me Up", 15)

end

def test_customer_has_name()
  assert_equal("Elaine", @customer_3.name())
end

def test_customer_favorite_song()
  assert_equal("Start Me Up", @customer_4.favorite_song())
end

def test_customer_has_cash()
  assert_equal(30, @customer_3.cash())
end


end
