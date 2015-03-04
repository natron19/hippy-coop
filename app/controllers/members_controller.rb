class MembersController < ApplicationController 

  def index 
    @members = Member.all
  end 

  def show 
    @member = Member.find(params[:id])

  end 

  def new 
    @member = Member.new
  end 

  def create 
    @member = Member.new(member_params) 
    if @member.save 
      redirect_to @member, notice: "Member added" 
    else 
      render :new, notice: "Try again please" 
    end 
  end 

  def edit 
    @member = Member.find(params[:id])
  end

  def update 
    if @member.update(member_params)
      redirect_to @member, notice: "Member updated" 
    else 
      render :edit 
    end 
  end

  def destroy 
    @member = Member.find(params[:id])
    @member.destroy 
    redirect_to root_url, alert: "Member Deleted" 
  end 

  private 

  def member_params  
    params.require(:member).permit(:first_name, :last_name, :room_id, :room)
  end 

end 