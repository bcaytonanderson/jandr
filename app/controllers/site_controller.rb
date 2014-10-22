class SiteController < ApplicationController

  def index
    @site = Site.find_by(user_id: current_user.id)
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  private

  def site_params
    params.require(:site).permit(:title, :headline)
  end

end