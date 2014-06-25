class Attendee < ActiveRecord::Base
  has_many :tickets

  belongs_to :north_neighbor, class_name: "Attendee"
  belongs_to :east_neighbor, class_name: "Attendee"
  belongs_to :south_neighbor, class_name: "Attendee"
  belongs_to :west_neighbor, class_name: "Attendee"
  has_one :neighbor_north, class_name: "Attendee", foreign_key: "north_neighbor"
  has_one :neighbor_east, class_name: "Attendee", foreign_key: "east_neighbor"
  has_one :neighbor_south, class_name: "Attendee", foreign_key: "south_neighbor"
  has_one :neighbor_west, class_name: "Attendee", foreign_key: "west_neighbor"

  validates :first_name, presence: true, length: { maximum: 40 }
  validates :last_name, presence: true, length: { maximum: 40 }
end
