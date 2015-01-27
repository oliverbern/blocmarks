class LikesController < ApplicationController
def create
     @bookmark = Bookmark.find(params[:bookmark_id])
     like = current_user.likes.build(bookmark: @bookmark)
 
     if like.save
     	flash[:notice] = "Bookmark favorited."
      redirect_to "/topics"
       # Add code to generate a success flash and redirect to @bookmark
     else
       # Add code to generate a failure flash and redirect to @bookmark
     end
 end

def destroy
     @bookmark = Bookmark.find(params[:bookmark_id])
     like = current_user.likes.build(bookmark: @bookmark)
 
     if like.destroy
       # Flash success and redirect to @bookmark
     else
       # Flash error and redirect to @bookmark
     end
end
end
