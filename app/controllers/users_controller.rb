class UsersController < ApplicationController
  def show
  	@user_bookmarks = current_user.bookmarks #Bookmark.where(user_id: current_user)
  	@user_likes = current_user.likes
  end
end
