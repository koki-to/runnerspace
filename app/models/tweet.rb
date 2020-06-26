class Tweet < ApplicationRecord
  validates :title, presence: true, length: { maximum: 10 }
  validates :text, presence: true, length: { maximum: 200 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags
  

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('title LIKE(?)', "%#{search}%")
  end
  mount_uploader :image, ImageUploader
end
