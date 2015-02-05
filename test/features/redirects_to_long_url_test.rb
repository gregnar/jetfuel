require 'test_helper'

class RedirectsToLongURLTest < ActiveSupport::TestCase

  test "it redirects to the long url when accessing the short url" do
    website = Website.create(long_url: "http://www.google.com")
    visit website_path(website.id)
    assert_equal "http://www.google.com/", current_url
  end

end
