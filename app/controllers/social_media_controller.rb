class SocialMediaController < ApplicationController
  def new
    if params[:commit] == "send"
      twit = params[:message]
      puts twit
      twitt(twit)
    end
  end

    def twitt(message)
     begin
       twitter_client.update(message)
       redirect_to social_media_new_path , :notice => " tweeted :D"
     rescue Twitter::Error
       redirect_to social_media_new_path , :notice => "Hey Blank form ;)"
    rescue Exception
      puts "some other error happened!"
    end
    end
end
