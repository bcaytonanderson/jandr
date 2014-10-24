class SiteController < ApplicationController

  def index
    @site = Site.all.first
    if @site != nil
      @groups = Group.where(site_id: @site.id)
      @logo = Image.find_by(imageable_type: "site", imageable_id: @site.id)
    else
      redirect_to '/admin'
    end
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