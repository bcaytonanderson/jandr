class ContentsController < ApplicationController



  def index
  end

  def create
  end

  def new
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
    redirect_to "/contents/#{@content.id}/edit"
  end

  def delete
  end

  private

  def content_params
    params.require(:content).permit(:title, :subtitle, :story, :featured)
  end
  
end