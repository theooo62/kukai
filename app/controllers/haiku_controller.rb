class HaikuController < ApplicationController

	def index
	end

	def new
	end

	def create
		Tweet.create(name: params[:name], haiku: params[:image] )
	end
end
