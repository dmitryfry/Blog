Rails.application.routes.draw do


resources :articles
resource :contacts, only: [:new, :create], path_names: {:new => ''}

get 'terms' => 'pages#terms'
get 'about' => 'pages#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
