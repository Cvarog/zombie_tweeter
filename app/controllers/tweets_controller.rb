class TweetsController < ApplicationController



	def create
	@zombie = Zombie.find(params[:zombie_id])
  	@tweet = @zombie.tweets.build(:status => params[:tweet], :zombie_id => params[:zombie_id])
  	redirect_to @tweet.zombie, :notice => params

  	end

	def destroy
	@tweet = Tweet.find(params[:id]) 
  	@tweet.destroy

  	redirect_to @tweet.zombie


	end

end
