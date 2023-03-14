class FishingSuccess < ApplicationRecord
  belongs_to :angler
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fishing_success_tags, dependent: :destroy
  has_one_attached :image
end
