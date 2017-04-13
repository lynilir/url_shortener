class Visit < ApplicationRecord
  def self.record_visit!(user, shortened_url)
    new_visit = Visit.new(visitor_id: user.id, link_id: shortened_url.id)
    new_visit.save!
  end

  belongs_to :visits_urls,
    class_name: "ShortenedUrl",
    primary_key: :id,
    foreign_key: :link_id

  belongs_to :visits_users,
    class_name: "User",
    primary_key: :id,
    foreign_key: :visitor_id
end
