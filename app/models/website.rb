class Website < ActiveRecord::Base
  validates_presence_of :long_url
  validate :long_url_must_begin_with_protocol
  after_create :shorten_url

  def shorten_url
    update_attributes(short_url: id)
  end

  def long_url_must_begin_with_protocol
    unless long_url.start_with?('http://', 'https://')
      errors.add(:long_url, 'must begin with "http://" or "https://"')
    end
  end

  def increase_hit_count
    update_attributes(hit_count: hit_count + 1)
  end

  def self.ranked_by_hit_count
    order('hit_count DESC')
  end

  def self.ranked_by_recency
    order('created_at DESC')
  end

  def fetch_title
    WebsiteTitleFetcher.fetch_title(long_url)
  end

end
