class TopicsController < ApplicationController
  def index
  	@topics = Topic.all
  end

  def show
  	@topics = Topic.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete

    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end
end
