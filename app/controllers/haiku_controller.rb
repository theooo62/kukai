class HaikuController < ApplicationController

	# before_action :move_to_main, except: :main

	def main
	end

	def index
		haikus = Haiku.all #where句でデータを絞る　evevt_idとか
		@haikus_random = haikus.sample(30)
	end

	def new
	end

	def create
		Haiku.create(haiku_params)
	end

	def destroy
		haiku = Haiku.find(params[:id])
		if haiku.user_id == current_user.id
		haiku.destroy
	end
	
	def new_event_create

	end


	private
	def haiku_params
		params.permit(:name, :text)
	end

	def move_to_main
      # redirect_to action: :index unless user_signed_in?
    end

end
