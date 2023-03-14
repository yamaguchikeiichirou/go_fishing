class Favorite < ApplicationRecord
  belongs_to :angler
  belongs_to :fishing_success
end
