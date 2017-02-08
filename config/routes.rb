Rails.application.routes.draw do
  get 'students/show'

  get 'welcome/index'
  get 'welcome/seedata'

  resources :articles
  resources :students

  #root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
