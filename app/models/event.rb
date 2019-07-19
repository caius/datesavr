require "securerandom"

class Event < ApplicationRecord
  has_many :event_dates

  validates :manage_token, uniqueness: true

  before_validation :populate_manage_token

  # Internal: generates a manage token if there isn't one already
  # @return nothing
  def populate_manage_token
    self.manage_token ||= SecureRandom.hex(18)
  end
end
