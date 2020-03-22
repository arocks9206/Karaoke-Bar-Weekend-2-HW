class Room

  attr_reader :name, :customer_limit, :guests

  def initialize(name, customer_limit, guests)
    @name = name
    @customer_limit = customer_limit
    @guests = guests
  end

  def check_customer_in(customer)
    @guests << customer
  end

  def remove_customer_from_room(customer)
    @guests.delete(customer)
  end

  def room_occupancy_limit(customer)
    if @guests.size > @customer_limit
      remove_customer_from_room(customer)
    end
    return "Sorry, Room Full"
  end





end
