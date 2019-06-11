Rails.application.routes.draw do
  resources :rooms, param: :token do
    resources :topics
  end

  root 'top#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
