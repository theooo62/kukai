class EventController < ApplicationController

  def index
    @events = Event.all
  end

  def new #eventビューページ作る！！！！！
		Event.create(event_params) #ストロングパラメーターじゃなくてもいい？
    # redirect_to "/event/:id"
 	end

  # def show
  #   @events = Event.find(params[:event_title])
  # end

  # def show #イベントページでの俳句一覧
	# 	haikus2 = Haiku.where(:id) #where句でデータを絞る
	# 	@haikus_random2 = haikus2.sample(30)
	# end


  def create #イベントページで俳句作成
    Haiku.create(haiku_params)
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

  def haiku_params
    params.permit(:name, :text)
  end

  def event_params
    params.permit(:event_title)
  end

end
