class Product < ApplicationRecord

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z},
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
