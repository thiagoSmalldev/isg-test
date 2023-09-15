Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      post '/login', to: 'auth#login'

      resources :posts, only: [:index, :create, :show, :update, :destroy] do
        resources :comments, only: [:index, :create, :show, :update, :destroy]
      end

      resources :users
    end
  end
end
