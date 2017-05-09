json.extract! review, :id, :user_id, :conversation_id, :usefullness, :friendliness, :comments, :created_at, :updated_at
json.url review_url(review, format: :json)
