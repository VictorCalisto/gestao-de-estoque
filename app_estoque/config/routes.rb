Rails.application.routes.draw do
  resources :movimentacoes, controller: 'movimentacoes'
  resources :movimentacaos, path: 'movimentacaos', controller: 'movimentacoes'
  resources :vendas
  resources :pedidos
  resources :estoques
  resources :historicos
  resources :fornecedores, controller: 'fornecedores'
  resources :fornecedors, path: 'fornecedores', controller: 'fornecedores'
  resources :clientes
  resources :funcionarios
  resources :produtos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "get#index"
  get '/index', to: 'get#index'
  get '/home', to: 'get#index'


end
# Método HTTP	     Caminho do URL        	Ação do Controlador
#   GET	           /fornecedores	        fornecedores#index
#   GET           	/fornecedores/new	    fornecedores#new
#   POST	          /fornecedores	         fornecedores#create
#   GET	           /fornecedores/:id	    fornecedores#show
#   GET          /fornecedores/:id/edit  	fornecedores#edit
#   PATCH/PUT      	/fornecedores/:id	    fornecedores#update
#   DELETE        	/fornecedores/:id	     fornecedores#destroy