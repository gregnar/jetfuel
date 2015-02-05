require "test_helper"

class CanAddWebPageTest < ActiveSupport::TestCase

  test "the homepage has a link to shorten a url" do
    visit root_path
    assert page.has_content?("Shorten a URL")
  end

  test "it can create a link" do
    visit root_path
    click_link "Shorten a URL"
    fill_in "website_long_url", with: "www.example.com/mrbigglesworth"
    click_button "Shorten!"
    assert page.has_content? "www.example.com/mrbigglesworth"
  end

end
