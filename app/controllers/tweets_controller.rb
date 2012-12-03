class TweetsController < ApplicationController

	def show

	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.create(params[:status => params[:status], :post_id => params[:id]])
		redirect_to "/zombies", :notice => params
	end

	def index

	end

end
