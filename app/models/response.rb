class Response < ApplicationRecord
  belongs_to :event
  belongs_to :respondent
end
