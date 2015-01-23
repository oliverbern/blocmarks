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
end
