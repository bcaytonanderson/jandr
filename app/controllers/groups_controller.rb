class GroupsController < ApplicationController

  def index
    @groups = Group.all
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
    @group = Group.find(params[:id])
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
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to '/admin'
  end

  private

  def group_params
    params.require(:group).permit(:name, :nav)
  end

end