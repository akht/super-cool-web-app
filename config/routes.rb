# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rooms, only: %i[show new edit create update] do
    resources :topics, only: %i[index new show create]
  end

  root 'top#index'
end
