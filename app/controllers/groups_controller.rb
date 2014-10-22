class GroupsController < ApplicationController

  def index
  end

  def create
    @site = Site.find_by(user_id: current_user.id)
    @group = Group.new(group_params)
    @group.site_id = @site.id
    @group.save
    redirect_to '/admin'
  end

  def new
    @group = Group.new
  end

  def show
  end

  def edit
    @group = Group.find(params[:id])
    @contents = Content.where(group_id: @group.id)
  end

  def update
    @group = Group.find(params[:id])
    if group_params["nav"] == nil
      @group.nav = false
      @group.save
    end
    @group.update(group_params)
    redirect_to "/groups/#{@group.id}/edit"
  end

  def delete
  end

  private

  def group_params
    params.require(:group).permit(:name, :nav)
  end

end