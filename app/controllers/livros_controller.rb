class LivrosController < ApplicationController
  def index
    @livros = Livro.all
  end

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
    params.require(:livro).permit(:nome, :exemplares, :price)
  end

end
