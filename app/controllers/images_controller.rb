class ImagesController < ApplicationController

  def create
    @image = Image.new
    @site = Site.first
    @image.imageable_type = "site" #params["image"]["imageable"]
    @image.imageable_id = @site.id
    @image.data = File.read(params["picture"].tempfile)
    @image.save
    redirect_to '/admin'
  end

  def show
    @image = Image.find(params[:id])
    send_data @image.data, filename: "site_logo.jpg", type: "image/jpeg", disposition: "inline"
  end

  def update
  end

  def delete
  end

end