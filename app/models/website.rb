class Website < ActiveRecord::Base
  validates_presence_of :long_url
  after_create :shorten_url

  def shorten_url
    update_attributes(short_url: id)
  end

end
