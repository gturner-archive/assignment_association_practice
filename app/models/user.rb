class User < ActiveRecord::Base
  has_many :post_authorings, class_name: "UserPost"
  has_many :authored_posts, source: :post, through: :post_authorings
  has_many :authored_comments, class_name: "Comment"
  has_many :tags_on_authored_posts, source: :tags, through: :authored_posts
end
