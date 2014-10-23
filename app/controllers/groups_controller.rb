class GroupsController < ApplicationController

  def index
  end

  def create
  end

  def new
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
    redirect_to "/groups/#{@group.id}/edit"
  end

  def delete
  end

  private

  def group_params
    params.require(:group).permit(:name, :nav)
  end

end