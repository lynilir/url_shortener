require 'securerandom'

class ShortenedUrl < ApplicationRecord
  include SecureRandom

  validates :short_url, :uniqueness => true
  validates :short_url, :presence => true
  validates :long_url, :presence => true
  validates :user_id, :presence => true

  def self.create!(user, long_url)
    new_url = ShortenedUrl.new(long_url: long_url, short_url: random_code, user_id: user.id)
    new_url.save!
  end

  def self.random_code
    short_url = SecureRandom.urlsafe_base64
    while ShortenedUrl.exists?(:short_url => short_url)
      short_url = SecureRandom.urlsafe_base64
    end
    short_url
  end

  belongs_to :submitter,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id

  has_many :url_visit,
    class_name: "Visit",
    primary_key: :id,
    foreign_key: :link_id

  has_many :visitors,
    through: :url_visit,
    source: :visits_users

  def num_clicks
    visitors.count
  end

  def num_uniques
    visitors.uniq.count
  end

  def num_recent_uniques
    recent = url_visit.select {|visitor| visitor.created_at > 10.minutes.ago}
    recent.uniq.count
  end
end
