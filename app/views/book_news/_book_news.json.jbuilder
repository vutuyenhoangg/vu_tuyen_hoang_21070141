json.extract! book_news, :id, :title, :author, :publisher, :year, :borrowed_at, :available, :subject_id, :created_at, :updated_at
json.url book_news_url(book_news, format: :json)
