class SiteController < ApplicationController

  def index
    @site = Site.all.first
    @groups = @site.groups
    @logo = Image.where(imageable: "site", imageable_id: @site.id).first
  end

  def create
    @site = Site.new(site_params)
    @site.user_id = current_user.id
    @site.save
    redirect_to '/admin'
  end

  def new
    @site = Site.new
  end

  def edit
  end

  def show
    @site = Site.find_by(user_id: current_user.id)
    @groups = @site.groups
  end

  def update
    @site = Site.find_by(user_id: current_user.id)
    @site.update(site_params)
  end

  private

  def site_params
    params.require(:site).permit(:name, :headline)
  end


end