class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @site = Site.find_by(user_id: current_user.id)
    @groups = @site.groups
  end

  def new
  end

  def create
  end

end