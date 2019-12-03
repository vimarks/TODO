Rails.application.routes.draw do
  scope '/api' do
    resources :days
    resources :tasks
    resources :users, only: [:create, :show, :index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
