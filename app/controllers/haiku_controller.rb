class HaikuController < ApplicationController

	def index
		@haikus = Haiku.all
	end

	def new
	end

	def create
		Haiku.create(haiku_params)

	end

	private
	def haiku_params
		params.permit(:name, :haiku)
	end

end
