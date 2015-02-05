require 'test_helper'

class WebsiteTest < ActiveSupport::TestCase

  test "it shortens a url on creation" do
    @website = Website.create(long_url: "http://youtube.com/ahiopahgopa")
    assert_equal @website.id.to_s, @website.short_url
  end
  
end
