class ImagesController < ApplicationController

  def create
    @image = Image.new
    @site = Site.first
    @image.imageable_type = params["image"]["imageable_type"]
    @image.imageable_id = params["image"]["imageable_id"]
    @image.data = File.read(params["picture"].tempfile)
    @image.save
    redirect_to '/admin'
  end

  def show
    @image = Image.find(params[:id])
    send_data @image.data, filename: "site_logo.jpg", type: "image/jpeg", disposition: "inline"
  end

  def update
    @image = Image.find_by(imageable_type: params["image"]["imageable_type"], imageable_id: params["image"]["imageable_id"])
    @image.data = File.read(params["picture"].tempfile)
    @image.save
    redirect_to '/admin'
  end

  def delete
  end

end