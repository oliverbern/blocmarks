class UsersController < ApplicationController
  def show
  	@user_bookmarks = Bookmark.all.where(user_id: current_user)
  end
end
