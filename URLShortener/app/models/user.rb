class User < ApplicationRecord
  validates :email, :uniqueness => true
  validates :email, :presence => true

  has_many :submitted_urls,
    class_name: "ShortenedUrl",
    primary_key: :id,
    foreign_key: :user_id

  has_many :user_visits,
    class_name: "Visit",
    primary_key: :id,
    foreign_key: :visitor_id

  has_many :visited_urls,
    through: :user_visits,
    source: :visits_urls
end
