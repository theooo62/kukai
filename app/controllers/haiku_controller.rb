class HaikuController < ApplicationController

	before_action :move_to_top, except: :top

	def top
	end

	def index
		@event = Event.find(params[:event_id])

		haikus = Haiku.where(event_id: params[:event_id])
		@haikus_random = haikus.sample(30)

	end


	def new
		@event = Event.find(params[:event_id])
	end

	def create #イベントページで俳句作成
    Haiku.create(haiku_params)
  end


	private

	def haiku_params
		params.permit(:name, :text).merge(user_id: current_user.id)
	end

	def move_to_top
      redirect_to action: :index unless user_signed_in?
	end
end
