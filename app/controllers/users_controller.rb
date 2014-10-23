class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @site = Site.find_by(user_id: current_user.id)
    if @site != nil
      @groups = @site.groups
      new_image = File.new(Rails.root.join("public/assets/images/hello.jpg"), "w")
      new_image.syswrite(@site.picture)
      new_image.close
    else
      redirect_to '/site/new'
    end
  end

  def new
  end

  def create
  end

end