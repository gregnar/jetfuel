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

end
