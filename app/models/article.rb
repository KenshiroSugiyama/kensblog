class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    
    mount_uploader :image, ImageUploader

    belongs_to :user
    has_many :comments
end
