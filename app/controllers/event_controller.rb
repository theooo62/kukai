class EventController < ApplicationController

  def index
    @events = Event.all
  end

  def create
		Event.create(event_params)
    # redirect_to "/event/:id"
 	end

  # def show #イベントページでの俳句一覧
	# 	haikus2 = Haiku.where(:event_id)
	# 	@haikus_random2 = haikus2.sample(30)
	# end

	def destroy　
		haiku = Haiku.find(params[:id])
		if haiku.user_id == current_user.id
		haiku.destroy
		end
	end

	def edit
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

end
