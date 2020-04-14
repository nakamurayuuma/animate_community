class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @tweet  = current_user.tweets.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @registers =  Register.all
    end
  end

  def search
  end

end
