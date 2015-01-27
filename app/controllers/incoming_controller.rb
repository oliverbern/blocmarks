class IncomingController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create]

  def create

    
    # You put the message-splitting and business
    # magic here. 
    if Topic.where('lower(title) = ?', [params[:subject].downcase]).count == 0
      # topic does not exist
      sendtopic = Topic.create(title: params[:subject])
      sendtopic.save!     
      Bookmark.create(url: params[:'body-plain'], topic_id: sendtopic.id)
    else
      Bookmark.create(url: params[:'body-plain'], topic_id: Topic.where('lower(title) = ?', [params[:subject].downcase]).id)
    end

    # Find the user by using params[:sender]
     
     # Find the topic by using params[:subject]
    
     # Assign the url to a variable after retreiving it from params["body-plain"]

     # Check if user is nil, if so, create and save a new user

     # Check if the topic is nil, if so, create and save a new topic

     # Now that we're sure we have a valid user and topic, build and save a new bookmark

    # Assuming all went well. 
    head 200
  end

end