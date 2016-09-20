Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  root to: "static_pages#index"
  resources :tasks, only: [:index, :create] do
    post :complete, to: "tasks#complete"
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  # API
  namespace :api do
    namespace :v1 do
      resources :tasks, only: [:index, :create] do
        post :complete, to: "tasks#complete"
      end

      resources :users, only: [:create]
      resources :sessions, only: [:create]
    end
  end
end



# Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root to: 'landing#index'
# end



# resources :todo_lists do
#   resources :todo_items do
#     member do
#       patch :mark_complete
#     end
#   end
# end


