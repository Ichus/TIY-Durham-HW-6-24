require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "price must be an integer" do
    tix = Ticket.create(show_id: 1, attendee_id: 1, price: 180.123121)
    assert tix.invalid?
  end

  test "price must be greater than zero" do
    tix = Ticket.create(show_id: 1, attendee_id: 1, price: 0)
    assert tix.invalid?
  end

  test "attendee_id is required" do
    tix = Ticket.create(show_id: 1, price: 0)
    assert tix.invalid?
  end

  test "show_id is required" do
    tix = Ticket.create(attendee_id: 1, price: 0)
    assert tix.invalid?
  end
end
