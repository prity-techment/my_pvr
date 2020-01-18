class FavoritesController < ApplicationController
	def index
		@shows = Show.where(id: current_user.favorites.pluck(:show_id))
	end

	def create
		favorite = Favorite.new(favorite_params)
		if favorite.save
			flash[:success] = 'Marked as Favorite'
			redirect_to root_path
		else
			flash[:error] = 'Something went wrong'
		end
	end

	private

	def favorite_params
		params.permit(:user_id, :show_id, :channel_id)		
	end
end