json.extract! post, :id, :title, :body, :description, :image_url, :created_at, :updated_at
json.url post_url(post, format: :json)
