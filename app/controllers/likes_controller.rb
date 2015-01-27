class LikesController < ApplicationController
def create
     @bookmark = Bookmark.find(params[:bookmark_id])
     like = current_user.likes.build(bookmark: @bookmark)
 
     if like.save
     	flash[:notice] = "Bookmark favorited."
      redirect_to "/topics"
       
     else
		flash[:notice] = "Bookmark could not favorited, please try again or contact support."
     end
 end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.where(bookmark_id: @bookmark.id).first
    if like
      if like.destroy
        flash[:notice] = "Bookmark un-favorited."
        redirect_to "/topics"
      else
        flash[:notice] = "Bookmark could not un-favorited, please try again or contact support."
      end
    end
  end
end
