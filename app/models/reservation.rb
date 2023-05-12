class Reservation < ApplicationRecord
  validates :title, :start, :finish, presence: true
  validates :start, comparison: { less_than: :finish }
  validates :finish, comparison: { greater_than: :start }
end
