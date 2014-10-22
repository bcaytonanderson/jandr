class GroupsController < ApplicationController

  def index
  end

  def create
  end

  def new
  end

  def show
  end

  def edit
    @group = Group.find(params[:id])
    @contents = Content.where(group_id: @group.id)
  end

  def update
  end

  def delete
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

end