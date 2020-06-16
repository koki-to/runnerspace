class Tweet < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true, length: { maximum: 200 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
end
