class ContentsController < ApplicationController

  def index
  end

  def create
    @group = Group.find(params[:group_id])
    @content = Content.new(content_params)
    @content.group_id = @group.id
    @content.save
    redirect_to '/admin'
  end

  def new
    @group = Group.find(params[:group_id])
    @content = Content.new
  end

  def show
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])
    @group = Group.find(@content.group_id)
  end

  def update
    @content = Content.find(params[:id])
    if content_params["featured"] == nil
      @content.featured = false
      @content.save
    end
    @content.update(content_params)
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to '/admin'
  end

  private

  def content_params
    params.require(:content).permit(:title, :subtitle, :story, :featured)
  end

end