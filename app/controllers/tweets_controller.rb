class TweetsController < ApplicationController



	def create
	@zombie = Zombie.find(params[:zombie_id])
  	@tweet = @zombie.tweets.create(params[:tweet])
  	# redirect_to @tweet.zombie
  	redirect_to zombie_path(@zombie)
  	end

	def destroy
	@zombie = Zombie.find(params[:zombie_id])
	@tweet = Tweet.find(params[:id]) 
  	@tweet.destroy
  	redirect_to zombie_path(@zombie)
	end

end
