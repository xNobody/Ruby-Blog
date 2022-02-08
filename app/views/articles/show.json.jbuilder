  json.(@article, :created_at, :updated_at, :id, :title, :body)

  json.comments @article.comments, :id, :article_id, :commenter, :body, :created_at, :updated_at