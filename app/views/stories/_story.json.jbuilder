json.extract! story, :id, :title, :slug, :subtitle, :created_at, :updated_at
json.url story_url(story, format: :json)