class Tag < ApplicationRecord
  validates :name, presence: true,
                  uniqueness: { case_sensitive: false }  # ←追加

  has_many :tweet_tag_relations, dependent: :destroy
  has_many :tweets, through: :tweet_tag_relations, dependent: :destroy
end

