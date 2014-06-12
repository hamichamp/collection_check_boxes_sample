class Post < ActiveRecord::Base
  has_many :author_posts
  has_many :authors, :through => :author_posts
end
