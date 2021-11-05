Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to:'pages#about'
  # get 'articles' to:'application#articles'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
  resources :articles
  # resource :articles, only: [] do
  #   member do
  #     get :show
  #   end
  # end
end
