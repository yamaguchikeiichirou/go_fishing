class Tag < ApplicationRecord
  has_many :fishing_success_tags, dependent: :destroy
end
