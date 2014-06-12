json.array!(@author_posts) do |author_post|
  json.extract! author_post, :id, :post_id, :author_id
  json.url author_post_url(author_post, format: :json)
end
