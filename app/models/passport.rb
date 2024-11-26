class Passport < ApplicationRecord
  has_many :bookings
  belongs_to :user, dependent: :destroy
end
