Rails.application.routes.draw do
  get '/mini_blogs', to: 'mini_blogs#index'
  resources :mini_blogs do
    collection do
      post :confirm
    end
  end
end
