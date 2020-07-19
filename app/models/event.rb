class Event < ApplicationRecord
  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users
  validates :name, :address, :content, presence: true
  mount_uploader :image, ImageUploader
end
