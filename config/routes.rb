Rails.application.routes.draw do
  root to: "devise/sessions#new"
  devise_for :users
  get 'consulta_cep', to: 'cep#consulta_cep'
  resources :contatos

end
