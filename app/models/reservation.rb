class Reservation < ApplicationRecord
  validates :name, :start, :finish, presence: true
  validate :start, comparison: { less_than: :finish }
  validate :finish, comparison: { greater_than: :start }
end
