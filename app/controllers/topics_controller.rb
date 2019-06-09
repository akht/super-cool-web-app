class TopicsController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @room.topics.create(topic_params)
    redirect_to room_path(@room)
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end
