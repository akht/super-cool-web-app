class RoomsController < ApplicationController
  before_action :set_room, only: %i[show edit update destroy]

  def show
  end

  def new
    @room = Room.new
  end

  def edit
  end

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
      redirect_to @room, notice: 'イベントの更新完了！！'
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_url, notice: 'Room was successfully destroyed.'
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:name)
    end
end
