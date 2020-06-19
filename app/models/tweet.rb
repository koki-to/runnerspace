class Tweet < ApplicationRecord
  validates :title, presence: true, length: { maximum: 12 }
  validates :text, presence: true, length: { maximum: 200 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :tweet_tags
  has_many :tags, through: :tweet_tags
  

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
  mount_uploader :image, ImageUploader
end
