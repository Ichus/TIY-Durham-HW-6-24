# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
attendees = Attendee.all

Attendee.create(first_name: "first", last_name: "last")

Attendee.create(first_name: "jon", last_name: "last")

Attendee.create(first_name: "john", last_name: "last")

Attendee.create(first_name: "beth", last_name: "last")

Attendee.create(first_name: "tyler", last_name: "last")

Attendee.create(first_name: "richie", last_name: "last")

Attendee.create(first_name: "elizabeth", last_name: "last")

Attendee.create(first_name: "tiffany", last_name: "last")

Attendee.create(first_name: "steve", last_name: "last")

Attendee.create(first_name: "mike", last_name: "last")

Attendee.create(first_name: "james", last_name: "last")

Attendee.create(first_name: "mckenzie", last_name: "last")

attendees.find(1).update(east_neighbor: attendees.find(2),
                         south_neighbor: attendees.find(5))
attendees.find(2).update(east_neighbor: attendees.find(3),
                         south_neighbor: attendees.find(6),
                         west_neighbor: attendees.find(1))
attendees.find(3).update(east_neighbor: attendees.find(4),
                         south_neighbor: attendees.find(7),
                         west_neighbor: attendees.find(2))
attendees.find(4).update(south_neighbor: attendees.find(8),
                         west_neighbor: attendees.find(3))
attendees.find(5).update(north_neighbor: attendees.find(1),
                         east_neighbor: attendees.find(6),
                         south_neighbor: attendees.find(9))
attendees.find(6).update(north_neighbor: attendees.find(2),
                         east_neighbor: attendees.find(7),
                         south_neighbor: attendees.find(10),
                         west_neighbor: attendees.find(5))
attendees.find(7).update(north_neighbor: attendees.find(3),
                         east_neighbor: attendees.find(8),
                         south_neighbor: attendees.find(11),
                         west_neighbor: attendees.find(6))
attendees.find(8).update(north_neighbor: attendees.find(4),
                         south_neighbor: attendees.find(12),
                         west_neighbor: attendees.find(7))
attendees.find(9).update(north_neighbor: attendees.find(5),
                         east_neighbor: attendees.find(10))
attendees.find(10).update(north_neighbor: attendees.find(6),
                          east_neighbor: attendees.find(11),
                          west_neighbor: attendees.find(9))
attendees.find(11).update(north_neighbor: attendees.find(7),
                          east_neighbor: attendees.find(12),
                          west_neighbor: attendees.find(10))
attendees.find(12).update(north_neighbor: attendees.find(8),
                          west_neighbor: attendees.find(11))

Show.create(name: "epic show", max_attendence: 20000, stages: 8, max_vendors: 125)

Ticket.create(show_id: 1, attendee_id: 1, price: 180)
Ticket.create(show_id: 1, attendee_id: 2, price: 180)
Ticket.create(show_id: 1, attendee_id: 3, price: 180)
Ticket.create(show_id: 1, attendee_id: 4, price: 180)
Ticket.create(show_id: 1, attendee_id: 5, price: 180)
Ticket.create(show_id: 1, attendee_id: 6, price: 180)
Ticket.create(show_id: 1, attendee_id: 7, price: 180)
Ticket.create(show_id: 1, attendee_id: 8, price: 180)
Ticket.create(show_id: 1, attendee_id: 9, price: 180)
Ticket.create(show_id: 1, attendee_id: 10, price: 180)
Ticket.create(show_id: 1, attendee_id: 11, price: 180)
Ticket.create(show_id: 1, attendee_id: 12, price: 180)

Vendor.create(name: "official merch", vendor_type: "merch", location: "1-A", show_id: 1)
Vendor.create(name: "drinks 1", vendor_type: "bar", location: "1-B", show_id: 1)
Vendor.create(name: "cool stuff", vendor_type: "merch", location: "1-C", show_id: 1)
Vendor.create(name: "more cool stuff", vendor_type: "merch", location: "1-D", show_id: 1)
Vendor.create(name: "other cool stuff", vendor_type: "merch", location: "1-E", show_id: 1)
Vendor.create(name: "pizza place", vendor_type: "food", location: "2-A", show_id: 1)
Vendor.create(name: "ice cream shop", vendor_type: "food", location: "2-B", show_id: 1)
Vendor.create(name: "quesadilla stand", vendor_type: "food", location: "2-C", show_id: 1)
Vendor.create(name: "drinks 2", vendor_type: "bar", location: "2-D", show_id: 1)
