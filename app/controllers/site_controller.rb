class SiteController < ApplicationController

  def index
    @site = Site.find_by(user_id: current_user.id)
    if @site
      @groups = @site.groups
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

    if params["picture"]
      @site.picture = File.read(params["picture"])
      @site.save
    end
    @site.update(site_params)
    # redirect_to '/admin'
  end

  private

  def site_params
    params.require(:site).permit(:name, :headline)
  end

end