class SubmittedWebsitesController < ApplicationController

  def show
    @submitted_website = Website.find(params[:id])
  end

end
