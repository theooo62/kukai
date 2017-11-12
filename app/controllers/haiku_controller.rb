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

	def destroy　#イベントページから飛べるように
		haiku = Haiku.find(params[:id])
		if haiku.user_id == current_user.id
		haiku.destroy
		end
	end

	def edit #イベントページから飛べるように
    @haiku = Haiku.find(params[id])
	end

	def new_event_creates
	end

	def update
		haiku = Haiku.find(params[:event_id]) #ここのハッシュはevent_userから考える？
		if haiku.user_id == current_user.id
			haiku.update(haiku_params)
		end
	end

	private
	def haiku_params
		params.permit(:name, :text)
	end

	def move_to_main
      # redirect_to action: :index unless user_signed_in?
	end
end
