require strt

class tweets_controller.rb

def create
  tweet = create_params
  #tweet.save
end

private
  def create_params
    params = ActionController::Parameters.new(tweet: {})
   
    params.require(:tweet).permit(:tweet)
  end

end