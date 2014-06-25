README
-----------------

This app lightly models an extended concert. It stores data on different concerts,
people attending the show, tickets and vendors.

Attendee's has a self referential relationship designed to track which people
camp next to each other. It holds the primary key of another person in a foreign
key set to a cardinal direction in relation to itself.
