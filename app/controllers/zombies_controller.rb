class ZombiesController < ApplicationController

	def index
		@zombies = Zombie.all
	end

	def show
		@zombie = Zombie.find(params[:id])
	end

	def new
		@zombie = Zombie.new
	end

	def create
		@zombie = Zombie.new(params[:zombie])
		# @zombie = Zombie.create(params[:zombie])
		if @zombie.save
			redirect_to zombies_path
		else
			render "new"
		end

	end

	def destroy
		@zombie = Zombie.find(params[:id])
		@zombie.destroy
		
		redirect_to zombies_path
	end


	def edit
		@zombie = Zombie.find(params[:id])
	end

	def update
		@zombie = Zombie.find(params[:id])
		@zombie.update_attributes(params[:zombie])
		redirect_to zombies_path
	end

	def destroy_all
		Zombie.destroy_all
		redirect_to zombies_path
	end
end
