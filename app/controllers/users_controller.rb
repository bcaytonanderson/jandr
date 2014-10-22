class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @site = Site.find_by(user_id: current_user.id)
    if @site != nil
      @groups = @site.groups
    else
      redirect_to '/site/new'
    end
  end

  def new
  end

  def create
  end

end