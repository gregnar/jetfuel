module WebsitesHelper

  def full_short_url(website)
    "#{request.host_with_port}/#{website.short_url}"
  end

end
