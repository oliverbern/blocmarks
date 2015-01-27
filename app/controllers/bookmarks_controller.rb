class BookmarksController < ApplicationController
	
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  	@bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to users_show_path
  end
end
