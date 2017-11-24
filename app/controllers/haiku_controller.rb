class HaikuController < ApplicationController

	before_action :move_to_main, except: :main

	def main
	end

	def index
		haikus = Haiku.all #where句でデータを絞る　evevt_idとか
		@haikus_random = haikus.sample(30)
	end

	def new
	end


	private
	def move_to_main
      redirect_to action: :index unless user_signed_in?
	end
end
