class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :passport, dependent: :destroy
  enum status: { pending: "pending", approved: "approved", rejected: "rejected"}
end
