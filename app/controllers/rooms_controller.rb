# frozen_string_literal: true

class RoomsController < ApplicationController
  before_action :set_room, only: %i[show edit update]

  def show; end

  def new
    @room = Room.new
  end

  def edit; end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to @room, notice: '質問収集箱完成！！'
    else
      render :new
    end
  end

  def update
    if @room.update(room_params)
      redirect_to @room, notice: '質問収集箱更新完了！！'
    else
      render :edit
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name)
  end
end
