class Respondent < ApplicationRecord
  belongs_to :event

  has_many :responses
end
