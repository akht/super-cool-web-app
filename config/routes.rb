Rails.application.routes.draw do
  resources :rooms, param: :token do
    resources :topics
  end

  root 'top#index'
end
