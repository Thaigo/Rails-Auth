class Ticket < ApplicationRecord
  belongs_to :user
  resourcify

  enum status: { submitted: 0, approved: 1, rejected: 2 }
end
