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

  private

  def livro_params
    params.require(:livro).permit(:title, :author)
  end
end
