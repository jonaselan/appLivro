class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end 

  def new
    @sale = Sale.new
  end
  
  def create
    @sale = Livro.new(user_params)
    if @sale.save
      redirect_to @sale,
                  :notice => 'Venda cadastrada!'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:sale).permit(:sale_id)
  end

end
