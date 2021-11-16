class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :content,
  presence: { message: "cannot be empty"}, 
  unless: ->(post){post.image.present?}
end
