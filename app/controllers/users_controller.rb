class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @site = Site.find_by(user_id: current_user.id)
    if @site != nil
      @groups = @site.groups
      @logo = Image.find_by(imageable_type: "site", imageable_id: @site.id)
        # binding.pry
      # if @logo != nil
        # new_image = File.new(Rails.root.join("public/assets/images/logo.jpg"), "w") images_controller:
        # new_image.syswrite(@logo.data)
        # new_image.close
      # end
    else
      redirect_to '/site/new'
    end
  end

  def new
  end

  def create
  end

end