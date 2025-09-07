class Diagnosis < ApplicationRecord
  belongs_to :user
  validates :result_title, presence: true
end
