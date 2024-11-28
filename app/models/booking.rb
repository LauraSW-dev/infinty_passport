class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :passport
  enum status: { pending: "pending", approved: "approved", rejected: "rejected"}
end
