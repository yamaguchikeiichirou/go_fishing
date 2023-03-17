class FishingSuccess < ApplicationRecord
  belongs_to :angler
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fishing_success_tags, dependent: :destroy
  has_one_attached :image
  
  def favorited_by?(angler)
    favorites.exists?(angler_id: angler.id)
  end
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
end
