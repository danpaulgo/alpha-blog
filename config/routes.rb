Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"

  get "about", to: "pages#about"

  resources :articles
  # 'rake routes' command will show all routes created by this line of code, including, show, edit, and create

end
