class Register < ApplicationRecord
  belongs_to :category
  belongs_to :management
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :title, :image, :period, :category_id, 
  :content, :management_id, presence: true
end
