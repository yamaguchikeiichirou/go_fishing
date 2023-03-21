class Comment < ApplicationRecord
  belongs_to :angler
  belongs_to :fishing_success

  validates :content, presence: true
end
