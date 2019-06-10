class TopicsController < ApplicationController
  before_action :set_room

  def index
    @topics = @room.topics
  end

  def new
    @topics = @room.topics
  end

  def show
    @topic = @room.topics.sample(1)
  end

  def create
    @room.topics.create(topic_params)
    redirect_to room_path(@room)
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def topic_params
    params.require(:topic).permit(:name)
  end
end
