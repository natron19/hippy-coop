class PurchasesController < ApplicationController 

  def index 
    @purchases = Purchase.all
    @rooms = Room.all
  end 


  def show 
    @purchase = Purchase.find(params[:id])
  end 

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save  
      redirect_to @purchase, notice: "Purchase added" 
    else 
      render :new, notice: "Try again please" 
    end 
  end

  def edit 
    @purchase = Purchase.find(params[:id]) 
  end 

  def udpate 
    @purchase = Purchase.find(params[:id]) 
    if @purchase.update(purchase_params)
      redirect_to @purchase, notice: "Purchase Updated" 
    else 
      render :purchase 
    end 
  end 

  def destroy
    @purchase = Purchase.find(params[:id]) 
    @purchase.destroy 
    redirect_to root_url, alert: "Purchase Deleted" 
  end

  private 

  def purchase_params 
    params.require(:purchase).permit(:name, :cost, :member_id)
  end 

end 