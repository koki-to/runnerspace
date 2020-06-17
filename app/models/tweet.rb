class Tweet < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true, length: { maximum: 200 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
  mount_uploader :image, ImageUploader
end
