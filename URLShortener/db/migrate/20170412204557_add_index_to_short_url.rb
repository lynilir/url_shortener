class AddIndexToShortUrl < ActiveRecord::Migration[5.0]
  def change
    add_index :shortened_urls, :short_url
  end
end
