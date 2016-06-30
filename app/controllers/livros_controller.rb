class LivrosController < ApplicationController
  def new
    @livro = Livro.new
  end
  
  def create
    @livro = Livro.new(user_params)
    if @livro.save
      redirect_to @livro,
                  :notice => 'Livro cadastrado!'
    else
      render :new
    end
  end

  def show
    @livro = Livro.find(params[:id])
  end

  private
  def user_params
    params.require(:livro).permit(:nome, :exemplares)
  end

end
