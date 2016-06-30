class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end 

  def new
    @sale = Sale.new
  end
  
  def create
    @sale = Sale.new(user_params)
    if @sale.save
      redirect_to @sale,
                  :notice => 'Venda cadastrada!'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:sale).permit(:livro_id)
  end

end
