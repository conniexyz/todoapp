Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'landing#index'

 resources :tasks, only: [:index, :create] do
 post :complete, to: "tasks#complete"
end

 resources :users, only: [:new, :create]
 resources :sessions, only: [:new, :create, :destroy]

 # resources :users, only: [:create]
 resources :sessions, only: [:create]

end


# resources :todo_lists do
#   resources :todo_items do
#     member do
#       patch :mark_complete
#     end
#   end
# end


