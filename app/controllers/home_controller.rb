class HomeController < ApplicationController

	def index
		if params[:search].blank?
		  @channels = Channel.all
		  @shows = Show.all
		else
			@channels = Channel.where('name LIKE ?', "%#{params[:search]}%")
			@shows = Show.where('title LIKE ?', "%#{params[:search]}%")
		end
	end
end
