class WebsiteTitleFetcher

  def self.fetch_title(url)
    response = Faraday.get(url)
    if response.status == 301
      response = Faraday.get(response.headers[:location])
    else
      
    end
  end

  # handle_asynchronously :fetch_title
end
