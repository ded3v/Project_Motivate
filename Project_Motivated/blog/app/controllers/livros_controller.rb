class LivrosController < ApplicationController
  def index
    @livros = Livro.all
  end

  def new
    @livro = Livro.new
  end

  def create
    @livro = Livro.new(livro_params)
    if @livro.save
      redirect_to livros_path, notice: "Livro adicionado com sucesso!"
    else
      render :new
    end
  end

  def edit
    @livro = Livro.find(params[:id])
  end

  def update
    @livro = Livro.find(params[:id])
    if @livro.update(livro_params)
      redirect_to livros_path, notice: "Livro atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def livro_params
    params.require(:livro).permit(:title, :author, :rating, :synopsis)
  end
end

