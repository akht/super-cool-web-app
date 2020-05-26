Rails.application.routes.draw do
  resources :rooms do
    resources :topics
  end

  root 'top#index'
end
