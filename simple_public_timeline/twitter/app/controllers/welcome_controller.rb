class WelcomeController < ApplicationController
before_action :find_tweets
layout false
layout 'application', :except => :bonus
include TweetsStream 

  def index
  end

  def tweetsapi
     render json: {status: "SUCCESS", message:'Loaded tweets', tweets: @tweets}, status: :ok
  end

  def viajs
  end

  def bonus
    render(:layout => false)
  end

  private
  def find_tweets
    @tweets = TweetsStream.public_tweets
  end

end