class Post < ApplicationRecord
    belongs_to :user
    has_many :attachments
    has_many :post_tags
    has_many :comments
    has_one :category

end
