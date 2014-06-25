class Ticket < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :show

  validates :attendee_id, presence: true
  validates :show_id, presence: true
  validates :price, presence: true, numericality: { only_integer: true,
                                                    greater_than: 0 }
end
