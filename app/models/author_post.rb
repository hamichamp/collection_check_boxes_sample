class AuthorPost < ActiveRecord::Base
  belongs_to :post
  belongs_to :author
end
