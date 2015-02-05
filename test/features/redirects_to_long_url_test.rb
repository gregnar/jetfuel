require 'test_helper'

class RedirectsToLongURLTest < ActiveSupport::TestCase

  test "it redirects to the long url when accessing the short url" do
    website = Website.create(long_url: "www.google.com/janefonda")
    visit website_path(website.id)
    assert_equal "www.google.com/janefonda", current_url
  end

end
