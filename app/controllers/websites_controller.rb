class WebsitesController < ApplicationController

    def index
      @websites = Website.all
    end

    def new
      @website = Website.new
    end

    def create
      @website = Website.new(website_params)
      if @website.save
        redirect_to submitted_website_path(@website), notice: "Shortened URL created."
      else
        redirect_to new_website_path, notice: "Shortened URL could not be created."
      end
    end

    def show
      @website = Website.find(params[:id])
      redirect_to @website.long_url
    end


    private

    def website_params
      params.require(:website).permit(:long_url)
    end
end
