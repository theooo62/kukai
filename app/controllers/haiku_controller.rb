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

	def new_event_create #eventビューページ作る！！！！！
		Event.create(event_params) #ストロングパラメーターじゃなくてもいい？
 	end

	def create #イベントページで俳句作成
		Haiku.create(haiku_params)
	end

	def show #イベントページでの俳句一覧
		haikus2 = Haiku.where(event_id) #where句でデータを絞る
		@haikus_random2 = haikus2.sample(30)
	end

	def destroy　#イベントページから飛べるように！！！！
		haiku = Haiku.find(params[:id])
		if haiku.user_id == current_user.id
		haiku.destroy
		end
	end

	def edit #イベントページから飛べるように！！！！！
    @haiku = Haiku.find(params[id])
	end


	def update
		haiku = Haiku.find(params[:event_id]) #ここのハッシュはevent_userから考える？
		if haiku.user_id == current_user.id
			haiku.update(haiku_params)
		end
	end

	private
	def event_params
		params.permit(:event_title)
	end

	def haiku_params
		params.permit(:name, :text)
	end

	def move_to_main
      redirect_to action: :index unless user_signed_in?
	end
end
