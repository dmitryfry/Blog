Rails.application.routes.draw do


resources :articles
resource :contacts, only: [:new, :create], path_names: {:new => ''}


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
