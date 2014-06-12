class CreateAuthorPosts < ActiveRecord::Migration
  def change
    create_table :author_posts do |t|
      t.references :post, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
