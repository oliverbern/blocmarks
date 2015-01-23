class UsersController < ApplicationController
  def show
  	@user_bookmarks = current_user.bookmarks #Bookmark.where(user_id: current_user)
  end
end
