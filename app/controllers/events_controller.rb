class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
    @event.users << current_user
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to action: :index, notice: "イベントを作成しました"
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :address, :run, :image, :content, user_ids: [])
  end
end
