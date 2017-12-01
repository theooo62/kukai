class HaikuController < ApplicationController

	# before_action :move_to_top, except: :top
  #
	# def top
	# end

	def index
		@event = Event.find(params[:event_id])

		haikus = Haiku.where(event_id: params[:event_id])
		@haikus_random = haikus.sample(30)

	end


	def new
		@event = Event.find(params[:event_id])
	end

	def create #イベントページで俳句作成
		# @event_id = Event.where(event_id: params[:event_id])
    Haiku.create(haiku_params)
  end


	def edit
		@event = Event.find(params[:event_id])
    @haiku = Haiku.find(params[:id])
	end


	def destroy
		haiku = Haiku.find(params[:id])
		haiku.destroy
  	redirect_to controller: :users, action: :show
	end


	def update
		haiku = Haiku.find(params[:id])
			haiku.update(haiku_params)
		redirect_to controller: :users, action: :show
	end

	private

	def haiku_params
		params.permit(:name, :text).merge(user_id: current_user.id, event_id: params[:event_id])
	end

	def move_to_top
      redirect_to action: :index unless user_signed_in?
	end
end
