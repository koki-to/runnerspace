class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :introduction, length: { maximum: 100 }
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
end
