class Post < ApplicationRecord
    belongs_to :user
    has_many_attached :images
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_many :comments
    belongs_to :category
    accepts_nested_attributes_for :post_tags
    has_one_attached :thumbnail
end
