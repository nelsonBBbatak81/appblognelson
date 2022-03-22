json.extract! blog, :id, :user_id, :category_id, :title, :content, :slug, :urlfoto, :views, :created_at, :updated_at
json.url blog_url(blog, format: :json)
