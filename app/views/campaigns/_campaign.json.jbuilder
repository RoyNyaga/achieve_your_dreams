json.extract! campaign, :id, :title, :content, :start_date, :end_date, :photo, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
