class Tag < ApplicationRecord
  has_many :fishing_success_tags, dependent: :destroy
  has_many :fishing_successes, through: :fishing_success_tags
end
