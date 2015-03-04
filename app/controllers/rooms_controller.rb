class RoomsController < ApplicationController 

  def index 
    @rooms = Room.all
  end 

  def rent_managment
    @rooms = Room.all
  end 

  def new 
    @room = Room.new
  end 

  def create 
    @room = Room.new(room_params)
    if @room.save 
      redirect_to @room, notice: "Room added" 
    else 
      render :new, notice: "Try again please" 
    end 
  end 

  def show 
    @room = Room.find(params[:id])
  end 

  def edit 
    @room = Room.find(params[:id])
  end 

  def update
    @room = Room.find(params[:id])
    if @room.update_attributes(room_params) 
      redirect_to @room, notice: "Room Updated" 
    else 
      render :edit 
    end 
  end 

  def destroy 
    @room = Room.find(params[:id])
    @room.destroy 
    redirect_to root_url, alert: "Room Deleted" 
  end 


  private 

  def room_params 
    params.require(:room).permit(:name, :member_id, :rent)
  end 

end 
