class Author < ActiveRecord::Base
  has_many :author_posts
  has_many :posts, :through => :author_posts
end
