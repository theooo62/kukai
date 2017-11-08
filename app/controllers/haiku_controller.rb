class HaikuController < ApplicationController

	# before_action :move_to_main, except: :main

	def main
	end

	def index
		haikus = Haiku.all
		@haikus_random = haikus.sample(30)
	end

	def new
	end

	def create
		Haiku.create(haiku_params)

	end

	private
	def haiku_params
		params.permit(:name, :text)
	end

	# def move_to_main
	# 	redirect_to action: :main
	# end
	
end
