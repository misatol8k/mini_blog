Rails.application.routes.draw do
  get '/mini_blogs', to: 'mini_blogs#index'
  resources :mini_blogs do
  end
end
