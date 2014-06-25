class Vendor < ActiveRecord::Base
  belongs_to :show

  validates :name, presence: true, length: { maximum: 200 }
  validates :vendor_type, presence: true, length: { maximum: 200 }
  validates :location, presence: true, length: { maximum: 200 }, uniqueness: true
  validates :show_id, presence: true
end
