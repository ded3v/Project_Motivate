Rails.application.routes.draw do
  get 'livros', to: 'livros#index'
  get 'livros/novo', to: 'livros#new', as: 'novo_livro'
  post 'livros', to: 'livros#create'
  get 'livros/:id/editar', to: 'livros#edit', as: 'editar_livro'
  patch 'livros/:id', to: 'livros#update', as: 'atualizar_livro'
end
