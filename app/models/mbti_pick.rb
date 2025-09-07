class MbtiPick < ApplicationRecord
  VALID_CODES = %w[INTJ INTP ENTJ ENTP INFJ INFP ENFJ ENFP ISTJ ISFJ ESTJ ESFJ ISTP ISFP ESTP ESFP].freeze
  validates :mbti_code, presence: true, inclusion: { in: VALID_CODES }
  validates :artist, :title, presence: true
  validates :rank, inclusion: { in: [1, 2] }
end
