Rails.application.routes.draw do
  scope '/api' do
    resources :days
    resources :tasks
    resources :categories
    resources :users, only: [:create, :show, :index]
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/logged_in', to: 'sessions#is_logged_in?'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
