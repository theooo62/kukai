class HaikuController < ApplicationController

	def index
		@haikus = Haiku.all #ここでRAND使うとエラーになる。うまく動かない。
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

end
