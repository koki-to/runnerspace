class Tweet < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
end
