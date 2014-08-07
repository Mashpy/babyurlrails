class Babyurl < ActiveRecord::Base
  validates :url, :format => URI::regexp(%w(http https))
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
