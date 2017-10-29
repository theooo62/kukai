class HaikuController < ApplicationController

	def index
		@haikus = Haiku.all
	end

	def new
	end

	# def create
	# 	Haiku.create(name: params[:name], haiku: params[:haiku])
	# end
end
