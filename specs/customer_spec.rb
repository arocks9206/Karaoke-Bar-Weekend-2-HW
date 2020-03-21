require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../customer")

class CustomerTest < Minitest::Test

def setup()

  @customer_1 = Customer.new("Jerry", "Uptown Girl")
  @customer_2 = Customer.new("George", "Achey Breaky Heart")
  @customer_3 = Customer.new("Elaine", "Dancing Queen")
  @customer_4 = Customer.new("Kramer", "I Believe In A Thing Called Love")

end

def test_customer_has_name()
  assert_equal("Elaine", @customer_3.name())
end

def test_customer_favorite_song()
  assert_equal("I Believe In A Thing Called Love", @customer_4.favorite_song())
end


end
