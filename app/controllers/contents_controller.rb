class ContentsController < ApplicationController

  def index
  end

  def create
  end

  def new
  end

  def show
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def content_params
    params.require(:content).permit(:type)
  end

end