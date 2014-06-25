class Show < ActiveRecord::Base
  has_many :tickets
  has_many :attendees, :through => :tickets
  has_many :vendors

  validates :name, presence: true, length: { maximum: 200 }
  validates :max_attendence, presence: true, numericality: { only_integer: true,
                                                             greater_than: 0 }
  validates :stages, presence: true, numericality: { only_integer: true,
                                                     greater_than: 0 }
  validates :max_vendors, presence: true, numericality: { only_integer: true,
                                                          greater_than: 0 }

  def tickets_available?
    tix = Ticket.all
    tix = tix.where show_id: id
    tix.count < max_attendence
  end
end
