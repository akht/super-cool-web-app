# frozen_string_literal: true

class TopicsController < ApplicationController
  before_action :set_room

  def index
    @topics = @room.topics.shuffle
  end

  def new
    @topic = @room.topics.build
  end

  def show
    @topic = @room.topics.sample(1)
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.room = @room

    if @topic.save
      redirect_to @room, notice: 'トピックを作成しました。'
    else
      render :new
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def topic_params
    params.require(:topic).permit(:name, :who)
  end
end
